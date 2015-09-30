# xrandr --output eDP1 --auto 
# Width 1530; Height: 860
#$ gtf 1570 883 60
#
#  # 1568x883 @ 60.00 Hz (GTF) hsync: 54.84 kHz; pclk: 114.07 MHz
#  Modeline "1568x883_60.00"  114.07  1568 1656 1824 2080  883 884 887 914  -HSync +Vsync
# 
#$ gtf 1423 800 60

#  # 1424x800 @ 60.00 Hz (GTF) hsync: 49.68 kHz; pclk: 93.00 MHz
#  Modeline "1424x800_60.00"  93.00  1424 1496 1648 1872  800 801 804 828  -HSync +Vsync

# xrandr --newmode "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
# xrandr --addmode eDP1 1600x900_60.00 
# xrandr --output eDP1 --mode 1600x900_60.00

xrandr --newmode "1568x883_60.00"  114.07  1568 1656 1824 2080  883 884 887 914  -HSync +Vsync

xrandr --addmode eDP1 1568x883_60.00
xrandr --output eDP1 --mode 1568x883_60.00

xrandr --output HDMI1 --auto --right-of eDP1
