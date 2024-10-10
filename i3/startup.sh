#!/bin/bash

mouse_id=13

# Startup programs
setxkbmap -option grp:alt_shift_toggle -option caps:escape -layout us,ru
/usr/bin/lxpolkit &
nm-applet &
xfce4-clipman &

# Mouse configuration
xinput set-prop $mouse_id "Coordinate Transformation Matrix" 1, 0, 0, 0, 1, 0, 0, 0, 1
xinput set-prop $mouse_id "libinput Accel Profile Enabled" 0 1 0

# Computer specific configurations
xrandr --output DP-3 --mode 1920x1080 --rate 240
