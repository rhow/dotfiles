# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
  fi
fi

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$HOME/.activator-1.2.3-minimal:$PATH"
export PATH=$PATH:/usr/local/go/bin

bind '"\e[1;5D" backward-word'
bind '"\e[1;5C" forward-word'
export PATH="$PATH:$HOME/npm/bin"
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:$HOME/npm/lib/node_modules

# Moved to input section in .config/sway/config
# if [ -f /usr/bin/setxkbmap ]; then
#    setxkbmap -option caps:ctrl_modifier
# fi
# setxkbmap -option  # use with empty '-option' to remove mappings, i.e. cap locks on when above mapping is applied

docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

export DOTNET_CLI_TELEMETRY_OPTOUT=1

# conda activate
# if [ -f ~/anaconda3/etc/profile.d/conda.sh ]; then
#   source ~/anaconda3/etc/profile.d/conda.sh  # commented out by conda initialize
# fi

if [ -f ~/.nvm/nvm.sh ]; then
    source ~/.nvm/nvm.sh
fi

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -f ~/.custom_ps1 ]; then
    source ~/.custom_ps1
fi


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/rhow/.nvm/versions/node/v12.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/rhow/.nvm/versions/node/v12.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/rhow/.nvm/versions/node/v12.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/rhow/.nvm/versions/node/v12.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/rhow/.nvm/versions/node/v12.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /home/rhow/.nvm/versions/node/v12.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

if [ -f /home/rhow/.ssh/github ]; then
    eval "$(ssh-agent -s)" > /dev/null
    ssh-add -q /home/rhow/.ssh/github > /dev/null 2>&1
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rhow/Programs/google-cloud-sdk/path.bash.inc' ]; then . '/home/rhow/Programs/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rhow/Programs/google-cloud-sdk/completion.bash.inc' ]; then
    . '/home/rhow/Programs/google-cloud-sdk/completion.bash.inc';
fi

# source <(kubectl completion bash)

if [ -d "/var/lib/flatpak/exports/share" ]; then
    export PATH="$PATH:/var/lib/flatpak/exports/share";
fi

if [ -f "/home/rhow/anaconda3/etc/profile.d/conda.sh" ]; then
    source "/home/rhow/anaconda3/etc/profile.d/conda.sh";
fi

# Turn off Tap to Click on Dell touchpad
#     MaxTapTime              = 180
# synclient MaxTapTime=0

export CI_NEXUS_CREDENTIALS=YWVyaWFsZGV2OkAzcjFAbGQzdg==

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export USE_GKE_GCLOUD_AUTH_PLUGIN=True
