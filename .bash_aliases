# some more ls aliases
alias le='less'
alias lla='ls -alFh'
alias ll='ls -oFh --color=auto'
alias lls='ls -oSh --color=auto'
alias llt='ls -oth --color=auto'
alias lth='llt | head'
alias la='ls -A'
alias l='ls -CF'
alias gr='grep'
alias hi='history | ag -i'
alias psg='ps -ef | ag -i'
alias acs='apt-cache search'
alias les='less'
alias bc='/usr/bin/bc -l'
alias emacs='/usr/bin/emacs-24.3-nox'
alias df='/bin/df -h'

# GIT Aliases
alias g='git'
alias gstat='git status'
alias gadd='git add --all'
alias gcommit='git commit -a -m'
alias gdf='git diff'
alias gmerge='git merge --no-ff'
alias glog='git log --graph --pretty=format":%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gweb='git instaweb --httpd=webrick'

alias v='vagrant'

alias dps='docker ps'
alias dimages='docker images'
alias dips='docker ps | tail -n +2 | while read -a a; do name=${a[$((${#a[@]}-1))]}; echo -ne "$name\t"; docker inspect $name | grep IPAddress | cut -d \" -f 4; done'

alias dualscreen='sh ~/bin/dualscreen.sh'
alias singlescreen='sh ~/bin/singlescreen.sh'
alias offscreen='sleep 2; xset dpms force off'

alias agi='sudo apt-get install'
alias agu='sudo apt-get update && sudo apt-get dist-upgrade -y'

alias net-restart='sudo service network-manager restart'
alias net-unblock='rfkill unblock all'
alias net-reconfigure='sudo dpkg-reconfigure resolvconf'

# alias ping-test='ping i3dc6.i3.local -c 2; ping 8.8.8.8 -c 2'
alias ping-test="echo 'Ping i3dc6.i3.local, Stats:'| ag i3dc6; ping i3dc6.i3.local -c 2 -W 1| ag 'packet loss'; echo 'Ping Google Nameserver, Stats:'| ag Google; ping 8.8.8.8 -c 2 -W 1| ag 'packet loss'"
alias ping-g="echo 'Ping Google Nameserver, Stats:'| ag Google; ping 8.8.8.8 -c 2 -W 1| ag 'packet loss'"
alias i3vpn='sh ~/bin/netExtender.sh'
alias tail-syslog='sudo tail -f /var/log/syslog'

alias enable_alert='PS1="$PS1\a"'
alias idea='bash ~/Programs/idea/bin/idea.sh &'

alias ku='knife cookbook upload -E ceph-and-ha-budd3'
alias kt='knife cookbook test'
alias fu='knife environment edit ceph-and-ha-budd3'
alias eu='knife data bag edit passwords'
alias xclip='xclip -selection c'
alias tocb='function _tocb(){ echo "$1"| xclip; };_tocb'

alias mount-gpfs='sudo mount -t cifs -o user=rhow,domain=I3,iocharset=utf8,file_mode=0777,dir_mode=0777,sec=ntlmv2 //data.i3.local/1 /data'
alias mount-jungfrau='sudo mount -t cifs -o user=rhow,domain=I3,iocharset=utf8,file_mode=0777,dir_mode=0777 //documents.i3.local/jungfrau ~/mounts/jungfrau'

alias umount-gpfs='sudo umount ~/mounts/gpfs'
alias umount-jungfrau='sudo umount ~/mounts/jungfrau'

alias py34virtualenv='python3.4 -m venv --without-pip virtualenv'
alias py34pipinstall='curl https://bootstrap.pypa.io/get-pip.py | python'
alias pyserv='python -m SimpleHTTPServer'
alias s3cmd=/usr/local/bin/s3cmd

alias show-keys="xev  | grep -A2 --line-buffered '^KeyRelease'  | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
