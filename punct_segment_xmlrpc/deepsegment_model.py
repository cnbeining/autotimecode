from keras.models import model_from_json
import numpy as np
from seqtag_keras.layers import CRF
import pickle
import logging

# model version: 1.0.2
# English only


def chunk(l, n):
    """Yield successive n-sized chunks from l."""
    chunked_l = []
    for i in range(0, len(l), n):
        chunked_l.append(l[i:i + n])
    
    if not chunked_l:
        chunked_l = [l]
    
    return chunked_l


class DeepSegment():
    seqtag_model = None
    data_converter = None
    
    def __init__(self):
        # loading the model
        checkpoint_path = '/app/en_checkpoint'
        utils_path = '/app/en_utils'
        params_path = '/app/en_params'
        
        logging.warning("Loading DeepSegment model...")
        DeepSegment.seqtag_model = model_from_json(open(params_path).read(), custom_objects = {'CRF': CRF})
        DeepSegment.seqtag_model.load_weights(checkpoint_path)
        DeepSegment.data_converter = pickle.load(open(utils_path, 'rb'))
        logging.warning("DeepSegment model loaded...")

    def segment(self, sents):
        if not DeepSegment.seqtag_model:
            print('Please load the model first')
        
        string_output = False
        if not isinstance(sents, list):
            logging.warning("Batch input strings for faster inference.")
            string_output = True
            sents = [sents]
        
        sents = [sent.strip().split() for sent in sents]
        
        max_len = len(max(sents, key = len))
        if max_len >= 40:
            logging.warning("Consider using segment_long for longer sentences.")
        
        encoded_sents = DeepSegment.data_converter.transform(sents)
        all_tags = DeepSegment.seqtag_model.predict(encoded_sents)
        all_tags = [np.argmax(_tags, axis = 1).tolist() for _tags in all_tags]
        
        segmented_sentences = [[] for _ in sents]
        for sent_index, (sent, tags) in enumerate(zip(sents, all_tags)):
            segmented_sent = []
            for i, (word, tag) in enumerate(zip(sent, tags)):
                if tag == 2 and i > 0 and segmented_sent:
                    segmented_sent = ' '.join(segmented_sent)
                    segmented_sentences[sent_index].append(segmented_sent)
                    segmented_sent = []
                
                segmented_sent.append(word)
            if segmented_sent:
                segmented_sentences[sent_index].append(' '.join(segmented_sent))
        
        if string_output:
            return segmented_sentences[0]
        
        return segmented_sentences
    
    def segment_long(self, sent, n_window = None):
        if not n_window:
            logging.warning("Using default n_window=10. Set this parameter based on your data.")
            n_window = 10
        
        if isinstance(sent, list):
            logging.error(
                "segment_long doesn't support batching as of now. Batching will be added in a future release.")
            return None
        
        segmented = []
        sent = sent.split()
        prefix = []
        while sent:
            current_n_window = n_window - len(prefix)
            if current_n_window == 0:
                current_n_window = n_window
            
            window = prefix + sent[:current_n_window]
            sent = sent[current_n_window:]
            segmented_window = self.segment([' '.join(window)])[0]
            segmented += segmented_window[:-1]
            prefix = segmented_window[-1].split()
        
        if prefix:
            segmented.append(' '.join(prefix))
        
        return segmented
