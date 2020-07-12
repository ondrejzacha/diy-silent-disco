# Simple DIY Silent Disco setup

(aka local webradio)

## 1) Set up audio source:
- https://www.rocketbroadcaster.com/, https://www.mixxx.org/, or any other streaming audio encoder
(see https://www.rocketbroadcaster.com/streaming-audio-server/docs/configuration/basic-setup.html)

## 2) Start streaming server: https://www.rocketbroadcaster.com/streaming-audio-server/
```
make rsas
```

## 3) Serve webpage with audio controls:
```
make serve
```

## Configuration
Update default-config for RSAS:
- mounts and passwords set up in RSAS must be used in audio encoders (1) and match urls in (3)
