<template>
  <div>
    <div class="markdown-body" v-marked="md">README</div>
  </div>
</template>

<script>
export default {
  name: 'help',
  data: () => ({
    md: '# autotimecode\n' +
      '\n' +
      'Video to aligned timecode(SRT), transcription and translation in 4 clicks.\n' +
      '\n' +
      'Minimal intrusive to your current workflow. Granular API exposure. Modularized. \n' +
      '\n' +
      '## Run it!\n' +
      '\n' +
      'Make sure you have Docker Compose installed: refer to https://docs.docker.com/compose/install/ for instruction. Of course you also need Docker - refer to https://docs.docker.com/install/ for instructions.  \n' +
      '\n' +
      'Configure `CELERY_BROKER_URL` and `MONGO_URL` in environment variable, and run\n' +
      '\n' +
      '```\n' +
      'docker-compose build && docker-compose up\n' +
      '```\n' +
      '\n' +
      'Wait till `DeepSegment is loaded!` and `DeepCorrect is loaded!` shows up. This may take longer on CPU machines.\n' +
      '\n' +
      'API documentations are located in https://github.com/cnbeining/autotimecode/blob/master/autotimecode_api/README.MD .\n' +
      '\n' +
      '## Recommended Subtitle Workflow\n' +
      '\n' +
      'Note this workflow is based on ACICFG\'s recommendation: adjust to fit you needs.\n' +
      '\n' +
      '1. Get a rough version of timecode from video: covered in this project, `/vad/` endpoint\n' +
      '2. Transcribe the video (with help of STT). Roughly edit the SRT to include any time range that may be missing from the 1st step: Model building is **NOT** the target of this project - check `/stt/` endpoint for voice recognition helper.\n' +
      '3. From transcribed SRT, generate SRT with accurate timecode: `/fa/` endpoint.\n' +
      '4. Continue on translation (maybe with help of Machine Translation): check `/nmt/` endpoint. \n' +
      '\n' +
      '## Background\n' +
      '\n' +
      'This project is solving 4 problems:\n' +
      '\n' +
      '1. Given video, generate timecode on when human speech exists;\n' +
      '2. Given video and timecode, transcribe the video automatically;\n' +
      '3. Given rough timecode, generate accurate timecode aligned with video;\n' +
      '4. Given transcription, generate translation.\n' +
      '\n' +
      '## FAQ\n' +
      '\n' +
      '### Where is Speech to Text(STT)?\n' +
      '\n' +
      'A STT helper is added at `/stt/` endpoint.\n' +
      '\n' +
      'STT model training is out of the scope of this project, as this project is focusing on timecode generating and aligning. \n' +
      '\n' +
      '### Why include Kaldi and ffmpeg twice in different images?\n' +
      '\n' +
      '1. The target is that every segment of this project shall be reusable: \n' +
      '2. Those 2 Kaldies are not in the same version. Same reason I passed [PyKaldi](https://github.com/pykaldi/pykaldi).\n' +
      '\n' +
      '### Docker Compose is taking a minute to come up!\n' +
      '\n' +
      'TensorFlow Serving does not really mix with custom Keras layers.\n' +
      '\n' +
      '### How can I finetune your models?\n' +
      '\n' +
      'Stay tuned.\n' +
      '\n' +
      '### Where is Japanese/Chinese/xxxese/xxxlish support?\n' +
      '\n' +
      'The authors are working hard to make it happen. Again, stay tuned!\n' +
      '\n' +
      '## TODO\n' +
      '\n' +
      '- [ ] Multiple language support\n' +
      '- [ ] Add Google Drive support\n' +
      '- [ ] Add ASS download support\n' +
      '\n' +
      '## Authors\n' +
      '\n' +
      '- David Zhuang, https://www.cnbeining.com/ , https://github.com/cnbeining . Coded this thing. Productionalized the ML models involved. \n' +
      '- Yuan-Hang Zhang, https://www.sailorzhang.com/ , https://github.com/sailordiary . Designed the ML algos.\n' +
      '\n' +
      'The authors are member of, and acknowledge the help from [ACICFG](https://www.chineseaci.com).\n' +
      '\n' +
      '## License\n' +
      '\n' +
      'GPL 3.0. Please contact authors if you need licensing. \n' +
      '\n' +
      'Please retrieve copies of licenses from respected repo links. \n' +
      '\n' +
      '`Gentle` is written by @lowerquality, MIT license, https://github.com/lowerquality/gentle .\n' +
      '\n' +
      '`Kaldi` is located at https://kaldi-asr.org/ , Apache 2.0 license.\n' +
      '\n' +
      '`ffsend.py` was originally written by Robert Xiao (nneonneo@gmail.com), https://github.com/nneonneo/ffsend, and is licensed under the Mozilla Public License 2.0. If you have concern, remove this file and disable Firefox Send.\n' +
      '\n' +
      '`ffsend` binary is provided by Tim Visée, https://github.com/timvisee/ffsend , GPL 3.0. If you have concern, please remove this file.\n' +
      '\n' +
      'VAD engine is based on work of Hebbar, R., Somandepalli, K., & Narayanan, S. (2019). Robust Speech Activity Detection in Movie Audio: Data Resources and Experimental Evaluation. ICASSP 2019 - 2019 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP). doi: 10.1109/icassp.2019.8682532 . Original code can be retrieved at https://github.com/usc-sail/mica-speech-activity-detection .\n' +
      '\n' +
      '`txt2txt`, `deepcorrect` and `deepsegment` were written by Bedapudi Praneeth, https://github.com/bedapudi6788 , GPL 3.0.\n' +
      '\n' +
      'STT and NMT technologies are provided by Google.\n' +
      '\n' +
      'Some STT code are originally from https://github.com/agermanidis/autosub , MIT license.\n'
  })
}
</script>