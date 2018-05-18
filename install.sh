DOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

read -p "This will DELETE YOUR EXISTING bash, emacs, and tmux configurations. Are you sure? [y/N] " -r

if [[ $REPLY =~ ^[Yy]$ ]]; then

    # remove existing, and add symlinks to the dot files from the repo in their place
    find $DOTDIR -maxdepth 1 -name ".[^.]*" -print0 | while IFS= read -r -d $'\0' path; do
	file=$(basename $path)
	if [[ $file != ".git" && $file != ".gitignore" ]]; then
	    rm -rf ~/$file
	    ln -sf $DOTDIR/$file ~/$file
	fi
    done

    rm -rf ~/bin
    ln -sf $DOTDIR/bin ~/bin

    rm -f ~/.gitconfig
    ln -sf $DOTDIR/dot_gitconfig_global ~/.gitconfig
    rm -f ~/.gitignore_global
    ln -sf $DOTDIR/dot_gitignore_global ~/.gitignore_global

    rm -rf ~/.config/htop
    ln -sf $DOTDIR/dot_config/htop ~/.config/htop
    rm -rf ~/.config/terminator
    ln -sf $DOTDIR/dot_config/terminator ~/.config/terminator
    rm -rf ~/.config/sublime-text-3
    ln -sf $DOTDIR/dot_config/sublime-text-3 ~/.config/sublime-text-3
    rm -rf ~/.config/i3
    ln -sf $DOTDIR/dot_config/i3 ~/.config/i3

    echo "Done"
fi
