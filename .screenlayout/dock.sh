#!/bin/sh
xrandr --output DP2-2 --primary --mode 1920x1200 --pos 1600x0 --rotate normal
xrandr --output DP2-1 --mode 1920x1200 --pos 3520x0 --rotate normal
xrandr --output VIRTUAL1 --off
xrandr --output DP1 --off
xrandr --output DP2-3 --off
xrandr --output DP2 --off
xrandr --output eDP1 --mode 1600x900 --pos 0x0 --rotate normal --below DP2-2
