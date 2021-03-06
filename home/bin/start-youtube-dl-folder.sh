#!/bin/sh

BASENAME="$(basename "$PWD")"
PWD="$(pwd)"

echo "PWD $PWD"
echo "BASENAME $BASENAME"

youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' \
    -k \
    --batch-file="$PWD/urls.txt" --output "$PWD/%(title)s.%(ext)s" \
    -i --encoding utf-8 \
    --all-subs --write-srt --convert-subs srt $@
