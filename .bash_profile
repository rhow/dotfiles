# A login shell sources the .bash_profile on startup
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

setWindowTitle() {
  echo -ne "\e]2;$*\a"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export "EDITOR=vi"

export OS_USERNAME=dd_live
export OS_PASSWORD=Apass1964:
export OS_TENANT_NAME=dd_live
export OS_AUTH_URL=http://10.0.40.4:5000/v2.0
export OS_COMPUTE_API_VERSION=2
