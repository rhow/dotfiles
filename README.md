
## Synapse
    sudo add-apt-repository ppa:synapse-core/ppa
	sudo apt-get update
	sudo apt-get install synapse

## Skype 
    sudo apt-get install skype

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
To set caplocks to control key - added to .bashrc file
setxkbmap -option caps:ctrl_modifier
* I'd like to switch the `cntl+f` and `alt+f` functions in a terminal
* I'd like to switch the `cntl+b` and `alt+b` functions in a terminal

## i3wm
For some reason with i3wm, the brightness function keys become disabled.  They working Unity.
A work around was to add the Fn key bindings to the i3 config file.  Requires:

    sudo apt-get install xbacklight

Sound controls are also disabled, this reference looks to be helpful:
http://askubuntu.com/questions/97936/terminal-command-to-set-audio-volume

# IntelliJ
Java install: http://ubuntuhandbook.org/index.php/2014/02/install-oracle-java-6-7-or-8-ubuntu-14-04/

## Desktop
The idea.desktop file goes into here: /usr/share/applications for it
to be added into Synapse Launcher 

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
