
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
alias cal='/usr/bin/cal -B 1 -A 1'
alias df='/bin/df -h'
alias ip4='ip a | ag inet| grep -v inet6'

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

# Docker
alias dps='docker ps'
alias dpsa='docker ps -a'
alias drmi='docker rmi'
alias dimages='docker images'
alias dips='docker ps | tail -n +2 | while read -a a; do name=${a[$((${#a[@]}-1))]}; echo -ne "$name\t"; docker inspect $name | grep IPAddress | cut -d \" -f 4; done'

alias dualscreen='sh ~/bin/dualscreen.sh'
alias singlescreen='sh ~/bin/singlescreen.sh'
alias offscreen='sleep 2; xset dpms force off'
alias usb-reset='sudo modprobe -r usbhid'

alias agi='sudo apt-get install'
alias agu='echo "Updating..." && sudo apt update && echo "" && echo "Dist Upgrade..." && sudo apt-get dist-upgrade -y && echo "" && echo "Autoremove..." && sudo apt autoremove -y --purge'

alias net-restart='sudo service network-manager restart'
alias net-unblock='rfkill unblock all'
alias net-reconfigure='sudo dpkg-reconfigure resolvconf'
alias net-speed='date && curl -skLO https://git.io/speedtest.sh && chmod +x ./speedtest.sh && echo "Running Speed Test..." && ./speedtest.sh --simple && rm ./speedtest.sh'
alias ping-test="echo 'Ping gcp-bridge, Stats:'| ag gcp-bridge; ping gcp-bridge -c 2 -W 1| ag 'packet loss'; echo 'Ping Google Nameserver, Stats:'| ag Google; ping 8.8.8.8 -c 2 -W 1| ag 'packet loss'"
alias ping-g="echo 'Ping Google Nameserver, Stats:'| ag Google; ping 8.8.8.8 -c 2 -W 1| ag 'packet loss'"
alias i3vpn='sh ~/bin/netExtender.sh'
alias tail-syslog='sudo tail -f /var/log/syslog'
alias ipinet='ip -f inet addr | ag inet'

alias enable_alert='PS1="$PS1\a"'

alias xclip='xclip -selection c'
# alias tocb='function _tocb(){ echo "$1"| xclip; };_tocb'
alias mount-jungfrau='sudo mount -t cifs -o user=$USER,domain=I3,iocharset=utf8,file_mode=0777,dir_mode=0777 //10.200.30.19/jungfrau ~/mounts/jungfrau'
alias mount-scripts='sudo mount -t cifs -o user=$USER,domain=I3,iocharset=utf8,file_mode=0777,dir_mode=0777 //10.200.30.19/scripts ~/mounts/scripts'
alias umount-jungfrau='sudo umount ~/mounts/jungfrau'

alias py36virtualenv='python3.6 -m venv --without-pip virtualenv'
alias py35virtualenv='python3.5 -m venv --without-pip virtualenv'
alias pypipinstall='curl -s https://bootstrap.pypa.io/get-pip.py | python3'
alias pyserv='python3 -m http.server'
alias prettyjson='python3 -m json.tool'
alias s3cmd=/usr/local/bin/s3cmd

alias show-keys="xev  | grep -A2 --line-buffered '^KeyRelease'  | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"

alias eval-ssh='eval `ssh-agent -s` && ssh-add'

# Google
alias glist='gcloud compute instances list | ag'
alias gimages='gcloud compute images list | ag'
# alias gssh="function _gssh(){ echo $(glist $1 | awk '{print $5}'); };_gssh"
alias gssh='~/bin/google-ssh.sh'
alias gconfig='gcloud config config-helper'
alias gconfigs='gcloud config configurations list'
alias kconfig='kconfiga && kubectl config get-contexts | grep -v "\*" | grep -v "CURRENT" | awk '"'"'{print $1}'"'"
alias kconfiga='kubectl config get-contexts | ag "\*" | awk '"'"'{print $1, $2}'"'"
alias k8token='~/bin/k8token.sh'
alias maelstrom-fullscreen='maelstrom -fullscreen -volume 1'
alias tf='terraform'

alias code='code --disable-gpu'