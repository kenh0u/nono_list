#!/bin/bash

LOG=download_allthumbnails.log

exec 1> >(
  while read -r l; do echo "[$(date +"%Y-%m-%d %H:%M:%S")] $l"; done \
    | tee -a $LOG
)
exec 2> >(
  while read -r l; do echo "[$(date +"%Y-%m-%d %H:%M:%S")] $l"; done \
    | tee -a $LOG
)

mkdir -p thumbnail

while read line
do
  thumbnailurl='https://i.ytimg.com/vi/'"$line"'/hq720.jpg'
  output='thumbnail/'"$line"'.jpg'
  wget -O "$output" "$thumbnailurl"
done < videoids.txt
