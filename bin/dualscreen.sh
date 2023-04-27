# xrandr --output eDP1 --auto 
# xrandr --newmode "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
# xrandr --addmode eDP1 1600x900_60.00 
# xrandr --output eDP1 --mode 1600x900_60.00
# xrandr --output HDMI1 --auto --left-of eDP1

#xrandr --newmode "1424x800" 93.25  1424 1504 1648 1872  800 803 813 831 -hsync +vsync
#xrandr --output eDP1 --mode 1424x800

xrandr --output DP2-1 --auto
xrandr --output DP2-3 --auto --right-of DP2-1
xrandr --output eDP1 --auto --below DP2-1 --below DP2-3

# xrandr --output DP2-3 "1920x1080"
