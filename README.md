# autotimecode

Video to aligned timecode(SRT) in 3 clicks.

Minimal intrusive to your current workflow. Granular API exposure. Modularized. 

## Run it!

Configure `CELERY_BROKER_URL` and `MONGO_URL` in environment variable, run

```
docker-compose build && docker-compose up
```

API documentations are located in https://github.com/cnbeining/autotimecode/blob/master/autotimecode_api/README.MD .

## Recommended Subtitle Workflow

Note this workflow is based on ACICFG's recommendation: adjust to fit you needs.

1. Get a rough version of timecode from video: covered in this project, `/vad/` endpoint
2. Transcribe the video (with help of STT). Roughly edit the SRT to include any time range that may be missing from the 1st step: **NOT** the target of this project, although this project **MAY** provide helper to call 3rd party services.
3. From transcribed SRT, generate SRT with accurate timecode: `/fa/` endpoint.
4. Continue on translation (maybe with help of Machine Translation): may expose endpoints calling 3rd party services. 

## Background

This project is solving 2 problems:

1. Given video, generate timecode on when human speech exists;
2. Given rough timecode, generate accurate timecode aligned with video.

## FAQ

### Why not do Speech to Text(STT)?

Don't have the money to collect data and purchase TPU: will skip this one for now. Do let the authors know if there are any promising project that can be trained easily.

### Why include Kaldi and ffmpeg twice in different images?

1. The target is that every segment of this project shall be reusable: 
2. Those 2 Kaldies are not in the same version. Same reason I passed [PyKaldi](https://github.com/pykaldi/pykaldi).

### How can I finetune your models?

Stay tuned.

### Where is Japanese/Chinese/xxxese/xxxlish support?

The authors are working hard to make it happen. Again, stay tuned!

## TODO

- [ ] Multiple language support
- [ ] Add Google Drive support

## Authors

- David Zhuang (@cnbeining ), https://www.cnbeining.com/ . Coded this thing. Productionalized the ML models involved. 
- Yuan-Hang Zhang(@sailordiary ), https://www.sailorzhang.com/ . Designed the ML algos.

The authors are member of, and acknowledge the help from [ACICFG](https://www.chineseaci.com).

## License

GPL 3.0. Please contact authors if you need licensing. 

Gentle is written by @lowerquality, MIT license, https://github.com/lowerquality/gentle .

Kaldi is located at https://kaldi-asr.org/ , Apache 2.0 license.

`ffsend.py` was originally written by Robert Xiao (nneonneo@gmail.com), https://github.com/nneonneo/ffsend, and is licensed under the Mozilla Public License 2.0. If you have concern, remove this file and disable Firefox Send.

`ffsend` binary is provided by Tim Visée, https://github.com/timvisee/ffsend , GPL 3.0. If you have concern, please remove this file.

