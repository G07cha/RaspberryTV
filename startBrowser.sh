#/bin/sh

#Waiting for system boot
sleep 5
#Exporting env variables
export DISPLAY=:0.0
xhost +

link=$(head -n 1 /var/www/link)

#Removing previous process
killall midori
#Disabling screensaver
xset s off
#idk what it is
xset -dpms
#Starting midory, link to website is between -a and &
midori --display $DISPLAY -p -e Fullscreen -a $link &
