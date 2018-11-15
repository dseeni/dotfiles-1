#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function install() {
    echo "Installing submodules..."
    git submodule update --init
    echo "Syncing dotfiles to home directory..."
    rsync --exclude ".git/" --exclude ".gitmodules" --exclude ".DS_Store" \
          --exclude "install.sh" --exclude "README.md" --exclude "UNLICENSE" \
          --exclude ".gitignore" --exclude "update.sh" --exclude "docs/" \
          -av --no-perms . ~;
    echo "done"
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    install;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        install;
    fi;
fi;
unset install;
