#!/bin/sh
<<<<<<< HEAD
#export DISPLAY=:0.0
#tvservice --preferred > /dev/null
#fbset -depth 8; fbset -depth 16; xrefresh
echo 'on 0' | cec-client -s
=======

sudo tvservice -p
sudo chvt 9 && sudo chvt 7
>>>>>>> origin/master
