#!/bin/bash
mkdir -p /tmp/hls
nginx

while true; do
  ffmpeg -re -i "rtmp://139.59.48.129:1935/Mango/mango" \
    -c copy \
    -f hls \
    -hls_time 2 \
    -hls_list_size 5 \
    -hls_flags delete_segments \
    /tmp/hls/live.m3u8
  sleep 2
done