#!/bin/sh

inst(){
    if [ -f $2 ]; then
	mv $2 $2.bak
    fi
    cp $1 $2
}
instl(){
    if [ -e $1 -a ! -L $1 ]; then
	echo "$1 exists, but it's not a link; you'll have to link this by hand"
	return
    fi
    ln -sf $2 $1
}
instd(){
    cp -a $1 $2
} 

ln -sf $PWD/.bashrc ~
ln -sf ~/.bashrc ~/.profile 
ln -sf $PWD/.emacs ~
ln -sf $PWD/._gitconfig ~/.gitconfig
ln -sf $PWD/._gitignore_global ~/.gitignore_global
ln -sf $PWD/.bash_aliases ~
instd emacs ~
# using shellmarks instead
#(cd autojump; ./install.sh)
ln -sf $PWD/.bash.shellmarks ~

if [ ! -d ~/bin ]; then mkdir ~/bin; fi
ln -sf $PWD/bin/git-diff.sh ~/bin/git-diff.sh
