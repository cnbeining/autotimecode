import tensorflow as tf

tf.set_random_seed(6788)

import os
import pickle

import numpy as np

np.random.seed(6788)

from keras.layers import Input, Embedding, LSTM, TimeDistributed, Dense, SimpleRNN, Activation, dot, concatenate, \
    Bidirectional
from keras.models import Model, load_model

from keras.callbacks import ModelCheckpoint

# Placeholder for max lengths of input and output which are user configruable constants
max_input_length = None
max_output_length = None

char_start_encoding = 1
char_padding_encoding = 0


def build_sequence_encode_decode_dicts(input_data):
    encoding_dict = {}
    decoding_dict = {}
    for line in input_data:
        for char in line:
            if char not in encoding_dict:
                # Using 2 + because our sequence start encoding is 1 and padding encoding is 0
                encoding_dict[char] = 2 + len(encoding_dict)
                decoding_dict[2 + len(decoding_dict)] = char
    
    return encoding_dict, decoding_dict, len(encoding_dict) + 2


def encode_sequences(encoding_dict, sequences, max_length):
    encoded_data = np.zeros(shape = (len(sequences), max_length))
    for i in range(len(sequences)):
        for j in range(min(len(sequences[i]), max_length)):
            encoded_data[i][j] = encoding_dict[sequences[i][j]]
    return encoded_data


def decode_sequence(decoding_dict, sequence):
    text = ''
    for i in sequence:
        if i == 0:
            break
        text += decoding_dict[i]
    return text


def generate(text, input_encoding_dict, model, max_input_length, max_output_length, beam_size, max_beams,
             min_cut_off_len, cut_off_ratio):
    min_cut_off_len = max(min_cut_off_len, cut_off_ratio * len(text))
    min_cut_off_len = min(min_cut_off_len, max_output_length)
    
    encoder_input = encode_sequences(input_encoding_dict, [text], max_input_length)
    
    completed_beams = []
    running_beams = [
        [np.zeros(shape = (len(encoder_input), max_output_length)), [1]]
    ]
    running_beams[0][0][:, 0] = char_start_encoding
    
    while len(running_beams) != 0:
        running_beams = sorted(running_beams, key = lambda tup: np.prod(tup[1]), reverse = True)
        running_beams = running_beams[:max_beams]
        
        temp_running_beams = []
        for running_beam, probs in running_beams:
            if len(probs) >= min_cut_off_len:
                completed_beams.append([running_beam[:, 1:], probs])
            else:
                prediction = model.predict([encoder_input, running_beam])[0]
                sorted_args = prediction.argsort()
                sorted_probs = np.sort(prediction)
                
                for i in range(1, beam_size + 1):
                    temp_running_beam = np.copy(running_beam)
                    i = -1 * i
                    ith_arg = sorted_args[:, i][len(probs)]
                    ith_prob = sorted_probs[:, i][len(probs)]
                    
                    temp_running_beam[:, len(probs)] = ith_arg
                    temp_running_beams.append([temp_running_beam, probs + [ith_prob]])
        
        running_beams = [b for b in temp_running_beams]
    
    return completed_beams


def infer(text, model, params, beam_size = 3, max_beams = 3, min_cut_off_len = 10, cut_off_ratio = 1.5):
    input_encoding_dict = params['input_encoding']
    output_decoding_dict = params['output_decoding']
    max_input_length = params['max_input_length']
    max_output_length = params['max_output_length']
    
    decoder_outputs = generate(text, input_encoding_dict, model, max_input_length, max_output_length, beam_size,
                               max_beams, min_cut_off_len, cut_off_ratio)
    outputs = []
    for decoder_output, probs in decoder_outputs:
        outputs.append({'sequence': decode_sequence(output_decoding_dict, decoder_output[0]), 'prob': np.prod(probs)})
    
    return outputs


def generate_greedy(text, input_encoding_dict, model, max_input_length, max_output_length):
    encoder_input = encode_sequences(input_encoding_dict, [text], max_input_length)
    decoder_input = np.zeros(shape = (len(encoder_input), max_output_length))
    decoder_input[:, 0] = char_start_encoding
    for i in range(1, max_output_length):
        output = model.predict([encoder_input, decoder_input]).argmax(axis = 2)
        decoder_input[:, i] = output[:, i]
        
        if decoder_input[:, i] == char_padding_encoding:
            return decoder_input[:, 1:]
    
    return decoder_input[:, 1:]


def infer_greedy(text, model, params):
    input_encoding_dict = params['input_encoding']
    output_decoding_dict = params['output_decoding']
    max_input_length = params['max_input_length']
    max_output_length = params['max_output_length']
    
    decoder_output = generate_greedy(text, input_encoding_dict, model, max_input_length, max_output_length)
    return decode_sequence(output_decoding_dict, decoder_output[0])


def build_params(input_data = [], output_data = [], params_path = 'test_params', max_lenghts = (5, 5)):
    if os.path.exists(params_path):
        print('Loading the params file')
        params = pickle.load(open(params_path, 'rb'))
        return params
    
    print('Creating params file')
    input_encoding, input_decoding, input_dict_size = build_sequence_encode_decode_dicts(input_data)
    output_encoding, output_decoding, output_dict_size = build_sequence_encode_decode_dicts(output_data)
    params = {}
    params['input_encoding'] = input_encoding
    params['input_decoding'] = input_decoding
    params['input_dict_size'] = input_dict_size
    params['output_encoding'] = output_encoding
    params['output_decoding'] = output_decoding
    params['output_dict_size'] = output_dict_size
    params['max_input_length'] = max_lenghts[0]
    params['max_output_length'] = max_lenghts[1]
    
    pickle.dump(params, open(params_path, 'wb'))
    return params


def convert_training_data(input_data, output_data, params):
    input_encoding = params['input_encoding']
    input_decoding = params['input_decoding']
    input_dict_size = params['input_dict_size']
    output_encoding = params['output_encoding']
    output_decoding = params['output_decoding']
    output_dict_size = params['output_dict_size']
    max_input_length = params['max_input_length']
    max_output_length = params['max_output_length']
    
    encoded_training_input = encode_sequences(input_encoding, input_data, max_input_length)
    encoded_training_output = encode_sequences(output_encoding, output_data, max_output_length)
    training_encoder_input = encoded_training_input
    training_decoder_input = np.zeros_like(encoded_training_output)
    training_decoder_input[:, 1:] = encoded_training_output[:, :-1]
    training_decoder_input[:, 0] = char_start_encoding
    training_decoder_output = np.eye(output_dict_size)[encoded_training_output.astype('int')]
    x = [training_encoder_input, training_decoder_input]
    y = [training_decoder_output]
    return x, y


def build_model(params_path = 'test/params', enc_lstm_units = 128, unroll = True):
    # generateing the encoding, decoding dicts
    params = build_params(params_path = params_path)
    
    input_encoding = params['input_encoding']
    input_decoding = params['input_decoding']
    input_dict_size = params['input_dict_size']
    output_encoding = params['output_encoding']
    output_decoding = params['output_decoding']
    output_dict_size = params['output_dict_size']
    max_input_length = params['max_input_length']
    max_output_length = params['max_output_length']
    
    print('Input encoding', input_encoding)
    print('Input decoding', input_decoding)
    print('Output encoding', output_encoding)
    print('Output decoding', output_decoding)
    
    # We need to define the max input lengths and max output lengths before training the model.
    # We pad the inputs and outputs to these max lengths
    encoder_input = Input(shape = (max_input_length,))
    decoder_input = Input(shape = (max_output_length,))
    
    # Need to make the number of hidden units configurable
    encoder = Embedding(input_dict_size, enc_lstm_units, input_length = max_input_length, mask_zero = True)(
        encoder_input)
    # using concat merge mode since in my experiments it gave the best results same with unroll
    encoder = Bidirectional(LSTM(enc_lstm_units, return_sequences = True, unroll = unroll), merge_mode = 'concat')(
        encoder)
    encoder_last = encoder[:, -1, :]
    
    # using 2* enc_lstm_units because we are using concat merge mode
    # cannot use bidirectionals lstm for decoding (obviously!)
    
    decoder = Embedding(output_dict_size, 2 * enc_lstm_units, input_length = max_output_length, mask_zero = True)(
        decoder_input)
    decoder = LSTM(2 * enc_lstm_units, return_sequences = True, unroll = unroll)(decoder, initial_state = [encoder_last,
                                                                                                           encoder_last])
    
    # luong attention
    attention = dot([decoder, encoder], axes = [2, 2])
    attention = Activation('softmax', name = 'attention')(attention)
    
    context = dot([attention, encoder], axes = [2, 1])
    
    decoder_combined_context = concatenate([context, decoder])
    
    output = TimeDistributed(Dense(enc_lstm_units, activation = "tanh"))(decoder_combined_context)
    output = TimeDistributed(Dense(output_dict_size, activation = "softmax"))(output)
    
    model = Model(inputs = [encoder_input, decoder_input], outputs = [output])
    model.compile(optimizer = 'adam', loss = 'categorical_crossentropy', metrics = ['accuracy'])
    model.summary()
    
    return model, params

