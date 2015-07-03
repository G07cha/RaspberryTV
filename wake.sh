#!/bin/sh

export DISPLAY=:0.0
echo 'on 0' | cec-client -s
tvservice --preferred > /dev/null
fbset -depth 8; fbset -depth 16; xrefresh
xset s off
#idk what it is
xset -dpms