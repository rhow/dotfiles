#!/bin/sh

# $ xdpyinfo | grep resolution
#  resolution:    97x98 dots per inch

xrandr --output DP2-3 --primary --mode 1920x1200 --rate 60.00 --pos 1600x0 --rotate normal --dpi 96 --scale 1x1
xrandr --output DP2-1 --mode 1920x1200 --rate 60.00 --pos 3520x0 --rotate normal --dpi 96 --scale 1x1 --left-of DP2-3
xrandr --output VIRTUAL1 --off
xrandr --output DP1 --off
xrandr --output DP2-2 --off
xrandr --output DP2 --off
#xrandr --output eDP1 --mode 1600x900 --pos 0x0 --rotate normal --below DP2-2 --dpi 96 --scale 1x1
xrandr --output eDP1 --mode 1680x1050 --rotate normal --below DP2-1 --dpi 96 --scale 1x1
