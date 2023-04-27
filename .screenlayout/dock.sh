#!/bin/sh

# $ xdpyinfo | grep resolution
#  resolution:    97x98 dots per inch

DISP_LAP=eDP1
DISP_MLT=DP2-1
DISP_MRT=DP2-3

xrandr --output ${DISP_MRT} --primary --mode 1920x1200 --rate 60.00 --pos 1600x0 --rotate normal --dpi 96 --scale 1x1
xrandr --output ${DISP_MLT} --mode 1920x1200 --rate 60.00 --pos 3520x0 --rotate normal --dpi 96 --scale 1x1 --left-of ${DISP_MRT}
xrandr --output VIRTUAL1 --off
xrandr --output DP1 --off
xrandr --output DP2-2 --off
xrandr --output DP2 --off
#xrandr --output eDP1 --mode 1600x900 --pos 0x0 --rotate normal --below DP2-2 --dpi 96 --scale 1x1
xrandr --output ${DISP_LAP} --mode 1680x1050 --rotate normal --below ${DISP_MLT} --dpi 96 --scale 1x1
