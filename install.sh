#!/usr/bin/env bash

if [ $(dpkg-query -W -f='${Status}' zsh 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    echo "zsh is not installed! Please run:"
    echo "sudo apt-get install zsh"
    exit
fi

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
    echo "Syncing dotfiles to home directory..."
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
        --exclude "README.md" --exclude "LICENSE" --exclude ".gitignore" \
        -av --no-perms . ~;
    echo "done"
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
