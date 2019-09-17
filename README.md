# autotimecode

Video to aligned timecode(SRT) with transcription in 3 clicks.

Minimal intrusive to your current workflow. Granular API exposure. Modularized. 

## Run it!

Make sure you have Docker Compose installed: refer to https://docs.docker.com/compose/install/ for instruction. Of course you also need Docker - refer to https://docs.docker.com/install/ for instructions.  

Configure `CELERY_BROKER_URL` and `MONGO_URL` in environment variable, and run

```
docker-compose build && docker-compose up
```

Wait till `DeepSegment is loaded!` and `DeepCorrect is loaded!` shows up. This may take longer on CPU machines.

API documentations are located in https://github.com/cnbeining/autotimecode/blob/master/autotimecode_api/README.MD .

## Recommended Subtitle Workflow

Note this workflow is based on ACICFG's recommendation: adjust to fit you needs.

1. Get a rough version of timecode from video: covered in this project, `/vad/` endpoint
2. Transcribe the video (with help of STT). Roughly edit the SRT to include any time range that may be missing from the 1st step: Model building is **NOT** the target of this project - check `/stt/` endpoint for voice recognition helper.
3. From transcribed SRT, generate SRT with accurate timecode: `/fa/` endpoint.
4. Continue on translation (maybe with help of Machine Translation): may expose endpoints calling 3rd party services. 

## Background

This project is solving 3 problems:

1. Given video, generate timecode on when human speech exists;
2. Given video and timecode, transcribe the video automatically;
3. Given rough timecode, generate accurate timecode aligned with video.

## FAQ

### Where is Speech to Text(STT)?

A STT helper is added at `/stt/` endpoint.

STT model training is out of the scope of this project, as this project is focusing on timecode generating and aligning. 

### Why include Kaldi and ffmpeg twice in different images?

1. The target is that every segment of this project shall be reusable: 
2. Those 2 Kaldies are not in the same version. Same reason I passed [PyKaldi](https://github.com/pykaldi/pykaldi).

### Docker Compose is taking a minute to come up!

TensorFlow Serving does not really mix with custom Keras layers.

### How can I finetune your models?

Stay tuned.

### Where is Japanese/Chinese/xxxese/xxxlish support?

The authors are working hard to make it happen. Again, stay tuned!

## TODO

- [ ] Multiple language support
- [ ] Add Google Drive support
- [ ] Add ASS download support

## Authors

- David Zhuang, https://www.cnbeining.com/ , https://github.com/cnbeining . Coded this thing. Productionalized the ML models involved. 
- Yuan-Hang Zhang, https://www.sailorzhang.com/ , https://github.com/sailordiary . Designed the ML algos.

The authors are member of, and acknowledge the help from [ACICFG](https://www.chineseaci.com).

## License

GPL 3.0. Please contact authors if you need licensing. 

Please retrieve copies of licenses from respected repo links. 

`Gentle` is written by @lowerquality, MIT license, https://github.com/lowerquality/gentle .

`Kaldi` is located at https://kaldi-asr.org/ , Apache 2.0 license.

`ffsend.py` was originally written by Robert Xiao (nneonneo@gmail.com), https://github.com/nneonneo/ffsend, and is licensed under the Mozilla Public License 2.0. If you have concern, remove this file and disable Firefox Send.

`ffsend` binary is provided by Tim Visée, https://github.com/timvisee/ffsend , GPL 3.0. If you have concern, please remove this file.

VAD engine is based on work of Hebbar, R., Somandepalli, K., & Narayanan, S. (2019). Robust Speech Activity Detection in Movie Audio: Data Resources and Experimental Evaluation. ICASSP 2019 - 2019 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP). doi: 10.1109/icassp.2019.8682532 . Original code can be retrieved at https://github.com/usc-sail/mica-speech-activity-detection .

`txt2txt`, `deepcorrect` and `deepsegment` were written by Bedapudi Praneeth, https://github.com/bedapudi6788 , GPL 3.0.

STT technology is provided by Google.

Some STT code are originally from https://github.com/agermanidis/autosub , MIT license.
