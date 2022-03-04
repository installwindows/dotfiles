#!/bin/bash
# scrot does not work in xfce application shortcuts :(
# scrot /tmp/screenshot.png -s -e 'tesseract /tmp/screenshot.png /tmp/screenshot-out && head -n -1 /tmp/screenshot-out.txt | paste -s -d " " | tr -d "\n" | xclip -selection c'

lang="eng"
if [ $# -eq 1 ]; then
    lang=$1
fi
xfce4-screenshooter -r -c
xclip -selection c -t image/png -o | tesseract stdin stdout -l $lang 2> /dev/null | head -n -1 | paste -s -d " " | tr -d "\n" | xclip -selection c
