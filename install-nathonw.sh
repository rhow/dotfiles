DOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

read -p "This will DELETE YOUR EXISTING bash, emacs, and tmux configurations. Are you sure? [y/N] " -r

if [[ $REPLY =~ ^[Yy]$ ]]; then

    # remove existing config and add symlinks to the dot files from the repo in their place
    find $DOTDIR -maxdepth 1 -name ".[^.]*" -print0 | while IFS= read -r -d $'\0' path; do
	file=$(basename $path)
	if [[ $file != ".git" ]]; then
	    rm -rf ~/$file
	    ln -s $DOTDIR/$file ~/$file
	fi
    done
    rm -rf ~/bin
    ln -s $DOTDIR/bin ~/bin

    # TODO: should we install things that are needed in here too?
    # e.g. PHP modules, golang/gocode, etc.? what about phpformat and jsbeautify?
    
    echo "Done"
fi
