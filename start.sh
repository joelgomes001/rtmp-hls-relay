#!/bin/bash
mkdir -p /tmp/hls
nginx

SOURCE_URL=""
DEST_URL=""

while true; do
  if [ -n "" ]; then
    echo "Pulling RTMP from  and pushing to  + HLS..."
    ffmpeg -i "" \
      -c copy -f flv "" \
      -c copy -f hls -hls_time 4 -hls_list_size 10 -hls_flags delete_segments /tmp/hls/live.m3u8
  else
    echo "Pulling RTMP from  for HLS..."
    ffmpeg -i "" \
      -c copy -f hls -hls_time 4 -hls_list_size 10 -hls_flags delete_segments /tmp/hls/live.m3u8
  fi
  sleep 2
done