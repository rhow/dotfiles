# A login shell sources the .bash_profile on startup
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

setWindowTitle() {
  echo -ne "\e]2;$*\a"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export "EDITOR=vi"
