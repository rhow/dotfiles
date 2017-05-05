# A login shell sources the .bash_profile on startup
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

setWindowTitle() {
  echo -ne "\e]2;$*\a"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export "EDITOR=emacs"

export OS_AUTH_URL=http://stack-con1:5000/v2.0
export OS_TENANT_ID=72efea414e8746e38ed685f8e0056c75
export OS_TENANT_NAME="pad1-tenant"
export OS_USERNAME="rhow"
export OS_PASSWORD=gcopenstack
export OS_REGION_NAME="regionOne"
if [ -z "$OS_REGION_NAME" ]; then unset OS_REGION_NAME; fi

# Load pyenv automatically by adding
# the following to ~/.bash_profile:
export PATH="$PATH:/home/local/I3/rhow/.pyenv/bin"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source <(kubectl completion bash)

