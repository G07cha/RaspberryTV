#!/bin/sh
date

echo 'on 0' | cec-client -s

export DISPLAY=:0.0

tvservice --preferred > /dev/null
fbset -depth 8; fbset -depth 16; xrefresh
xset s off
xset -dpms