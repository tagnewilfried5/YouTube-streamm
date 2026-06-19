#!/bin/bash
apt-get update && apt-get install -y ffmpeg
ffmpeg -re -stream_loop -1 -i video.mp4 \
  -c:v libx264 -preset veryfast \
  -b:v 2500k -c:a aac -b:a 128k \
  -f flv rtmp://a.rtmp.youtube.com/live2/9jks-t2fm-cwhw-9639-dk3u
