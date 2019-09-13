## API Docs

### VAD

#### GET `/vad/<task_id>`

Get task info by `task_id`.

Sample request:

```
curl http://127.0.0.1:5055/vad/5d7b1e9c4a81dd9f9335c719
```

Sample response:

```
{
    "data": {
        "wav_url": "https://send.firefox.com/download/e32d1ab97c6e13f0/#UDXEBuubwMiEkOjyxN8ZKw",
        "srt_content": "0\n00:00:05,120 --> 00:00:05,760\n\n\n\n1\n00:00:07,680 --> 00:00:12,160\n\n\n",
        "timestamp": 1568349852,
        "steps": [
            {
                "number": 0,
                "comment": "FFsend file uploaded",
                "timestamp": 1568349855
            },
            {
                "number": 0,
                "comment": "Converted to WAV 16000",
                "timestamp": 1568349855
            },
            {
                "number": 0,
                "comment": "Converted to SCP",
                "timestamp": 1568349855
            },
            {
                "number": 0,
                "comment": "Converted to SRT",
                "timestamp": 1568349856
            }
        ],
        "task_id": "5d7b1e9c4a81dd9f9335c719"
    }
}
```

#### GET `/vad/<task_id>/srt`

Get SRT file, if exists.

Sample request:

```
curl http://127.0.0.1:5055/vad/5d7b1e9c4a81dd9f9335c719/srt
```

Sample response:

```
0
00:00:05,120 --> 00:00:05,760



1
00:00:07,680 --> 00:00:12,160



```


#### POST `/vad/`

Create VAD task by URL.

Sample request:

```
curl -X POST \
     http://127.0.0.1:5055/vad/ \
     -H 'Content-Type: application/json' \
     -H 'cache-control: no-cache' \
     -d '{"wav_url": "https://send.firefox.com/download/e32d1ab97c6e13f0/#UDXEBuubwMiEkOjyxN8ZKw"}'
```

Response:

```
{
    "data": {
        "wav_url": "https://send.firefox.com/download/e32d1ab97c6e13f0/#UDXEBuubwMiEkOjyxN8ZKw",
        "timestamp": 1568349852,
        "steps": [],
        "task_id": "5d7b2e4c4a81dd9f9335d719"
    }
}
```