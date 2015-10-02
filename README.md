
Synapse
sudo add-apt-repository ppa:synapse-core/ppa
sudo apt-get update
sudo apt-get install synapse

Skype 
sudo apt-get install skype

To get pyenv to source in the .bashrc file
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
To install new Python version:
sudo apt-get install libbz2-dev
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev


IMPORTANT!!: Executed the install-nathonw.sh, and it remove the ~/.config and created a sym link

PulseAudio GUI
sudo apt-get install pavucontrol

To set caplocks to control key - added to .bashrc file
setxkbmap -option caps:ctrl_modifier
- I'd like to switch the cntl+f and alt+f functions in a terminal
- I'd like to switch the cntl+b and alt+b functions in a terminal

i3wm
For some reason with i3wm, the brightness function keys become disabled.  They working Unity.
A work around was to add the Fn key bindings to the i3 config file.  Requires:
sudo apt-get install xbacklight

Sound controls are also disabled, this reference looks to be helpful:
http://askubuntu.com/questions/97936/terminal-command-to-set-audio-volume
 
IntelliJ
Java install: http://ubuntuhandbook.org/index.php/2014/02/install-oracle-java-6-7-or-8-ubuntu-14-04/

Desktop Example:
I3\rhow@lap-31:~$ cat /usr/share/applications/idea.desktop
[Desktop Entry]
Name=IntelliJ IDEA
Comment=IntelliJ IDEA IDE
Exec=/home/local/I3/rhow/Programs/idea.sh
Icon=/home/local/I3/rhow/Programs/idea.png
Terminal=false
StartupNotify=true
Type=Application
Categories=Development;IDE;

