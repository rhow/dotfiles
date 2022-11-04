# Notes for setup

```bash
sudo apt install -y git curl ncdu htop terminator silversearcher-ag emacs-nox vscode
sudo apt install -y chromium-browser xscreensaver gdebi flatpak
sudo apt install -y apt-transport-https ca-certificates software-properties-common
sudo apt-get install -y python3-gpg python3-distutils python3-testresources
sudo apt install -y gnome-tweak-tool
sudo apt install -y i3 dropbox keepassx
curl -s https://bootstrap.pypa.io/get-pip.py | python3
/home/rhow/.local/bin/pip3 install PyRIC

# Installs application launcher synapse; need to remove from apt repo, causes upgrade to fail 
sudo add-apt-repository ppa:synapse-core/ppa
sudo apt-get -y install synapse
# sudo emacs /etc/apt/sources.list.d/synapse-core-ubuntu-ppa-focal.list

curl https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
unzip YosemiteSanFranciscoFont-master.zip
cd YosemiteSanFranciscoFont-master/
mkdir ~/.fonts
cp *.ttf ~/.fonts/

./install.sh


# https://docs.anaconda.com/anaconda/install/linux/
sudo apt install -y apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
sha256sum Anaconda3-2020.02-Linux-x86_64.sh 
bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh 

conda create --name qgis
conda activate qgis
conda install -c conda-forge qgis

cp misc/dot_local_share_applications_qgis.desktop ~/.local/share/applications/qgis.desktop
cp misc/dot_local_share_applications_intellij.desktop ~/.local/share/applications/intellij.desktop

# Using gdm3 for a Display Manager, LightDM might be better
# sudo apt-get install gnome-flashback
# https://github.com/i3-gnome/i3-gnome.git > sudo make install
```

## Synapse
    # sudo add-apt-repository ppa:synapse-core/ppa
	# sudo apt-get update
	sudo apt-get install -y synapse


## Desktop files not showing up in i3wm
Found in in the 'desktop' files there's an entry for:
* `OnlyShowIn=Unity;`
Commenting this out allows it to be shown in Synapse, edit the
following file:
* `/usr/share/applications/unity-control-center.desktop`

## PulseAudio GUI
    sudo apt-get install pavucontrol

## Key conflict
`<Control>+space` is used by Ibus to change keyboard inputs, changed to `<Control><Shift><Alt>i`
* Use the Keyboard icon in the tray

## Cap Locks
To set caplocks to control key for terminal, added the following to .bashrc file:
* `setxkbmap -option caps:ctrl_modifier`

Limitation to this is that it only works on local terminals, doesn't
apply when ssh-ing to other machines.

Instead using the `gnome-tweak-tool`, and under *Typing* set _CapLocks
to additional Cntl_

## i3wm
Great tutorial for i3wm configuration and "Ricing" your UI
- Configuration: https://www.youtube.com/watch?v=8-S0cWnLBKg
- Ricing: https://www.youtube.com/watch?v=ARKIwOlazKI

    sudo apt-get install xbacklight lxappearance rofi 

Sound controls are also disabled, this reference looks to be helpful:
* http://askubuntu.com/questions/97936/terminal-command-to-set-audio-volume

# IntelliJ
Install: download latest, untar to `~/Programs`, and add symlinks
License activation - username: randingo, password in Keepass

## Desktop
For Synapse Launcher 
Desktop Example: `cat > ~/.local/share/applications/intellij.desktop`

	[Desktop Entry]
	Name=IntelliJ
	Exec=/home/rhow/Programs/idea.sh
	Icon=/home/rhow/Programs/idea.png
	Type=Application
	Categories=Development;IDE,GTK;GNOME;Utility;

# pa-applet
sudo apt-get install -y libglib2.0-dev libgtk-3-dev libnotify-dev libpulse-dev libx11-dev autoconf automake pkg-config
Use this fork: https://github.com/mschwager/pa-applet/tree/master
- Limited activity in repo, consider: https://github.com/nicklan/pnmixer
sudo cp src/pa-applet /usr/bin/

# QGIS
```
conda create --name qgis
source activate qgis
```
From: https://anaconda.org/conda-forge/qgis
```
conda install -c conda-forge qgis 
conda install -c conda-forge/label/cf201901 qgis 
```
Desktop Example: `cat > ~/.local/share/applications/qgis.desktop`

[Desktop Entry]
Name=QGIS
Exec=/bin/bash -c 'cd /home/rhow/anaconda3/bin;source activate qgis;qgis'
Icon=/home/rhow/anaconda3/envs/qgis/share/qgis/doc/images/qgis-icon-60x60.png
Type=Application
Categories=GIS,Development;

# Packages installed
curl ncdu blueman htop silversearcher-ag chromium-browser lxappearance ncdu
emacs25-nox
terminator
keepass2
git
gdebi
arandr
cifs-utils
sublime
python3-distutils

pithos 
suru-icon-theme 
arc-theme
synapse
thunar
indicator-synapse
postgresql-client 
pavucontrol
libcanberra-gtk-module

sudo apt install xfce4-notifyd
* tried `dunst`, couldn't get it to theme
* test with `notify-send Test 'This is a test'`; also Google Chat settings `Show an example`
