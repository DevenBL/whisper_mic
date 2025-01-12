# Whisper Mic
This repo is based on the work done [here](https://github.com/openai/whisper) by OpenAI.  This repo allows you use use a mic to run scripts. This repo copies some of the README from original project.

## Video Tutorial

See the video tutorial for this repo [here](https://www.youtube.com/watch?v=nwPaRSlDSaY). This is a fork of [here](https://github.com/mallorbc/whisper_mic) the video may not be relevant
### Professional Assistance

If are in need of paid professional help, that is available through this [email](mailto:deven.boutin@gmail.com)

## Setup

Now a pip package!

1. Create a venv of your choice.
2. Run ```pip install whisper-voice-commands```

## Example usage
```
whisper-voice-commands --model tiny --script_path ~youruser/scripts/ --english --ambient --dynamic_energy
```
Check ```whisper-voice-commands --help ``` for more details

## Available models and languages

There are five model sizes, four with English-only versions, offering speed and accuracy tradeoffs. Below are the names of the available models and their approximate memory requirements and relative speed. 


|  Size  | Parameters | English-only model | Multilingual model | Required VRAM | Relative speed |
|:------:|:----------:|:------------------:|:------------------:|:-------------:|:--------------:|
|  tiny  |    39 M    |     `tiny.en`      |       `tiny`       |     ~1 GB     |      ~32x      |
|  base  |    74 M    |     `base.en`      |       `base`       |     ~1 GB     |      ~16x      |
| small  |   244 M    |     `small.en`     |      `small`       |     ~2 GB     |      ~6x       |
| medium |   769 M    |    `medium.en`     |      `medium`      |     ~5 GB     |      ~2x       |
| large  |   1550 M   |        N/A         |      `large`       |    ~10 GB     |       1x       |

For English-only applications, the `.en` models tend to perform better, especially for the `tiny.en` and `base.en` models. We observed that the difference becomes less significant for the `small.en` and `medium.en` models.

## Microphone Demo

You can use the model with a microphone using the ```whisper-voice-commands``` program.  Use ```-h``` to see flag options.

Some of the more important flags are the ```--model``` and ```--english``` flags.

## Troubleshooting

If you are having issues with the ```cli.py``` not running try the following:
```
sudo apt install portaudio19-dev python3-pyaudio
```

## Contributing

Currently, this is just a cli demo.  I forsee that this pip package could become more than that for example:

```python
from whisper_mic.mic import WhisperMic
mic = WhisperMic(timeout=5)
command = mic.listen()
```

## License

The model weights of Whisper are released under the MIT License. See their repo for more information.

This code under this repo is under the MIT license.  See [LICENSE](LICENSE) for further details.

## Thanks
Until recently, access to high performing speech to text models was only available through paid serviecs.  With this release, I am excited for the many applications that will come.

## Todo
port to a faster platform like faster whisper or whisper.cpp and get it running on the pinephone
