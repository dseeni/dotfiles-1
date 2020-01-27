#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function update() {
    echo "Resetting local files..."
    git reset --hard
    echo "Updating to latest version..."
    git fetch origin
    git merge origin/master
    echo "Updating submodules..."
    git submodule update --init
    echo "Removing old files..."
    git clean -f
    echo "Syncing dotfiles to home directory..."
    rsync --exclude ".git/" --exclude ".gitmodules" --exclude ".DS_Store" \
          --exclude "install.sh" --exclude "README.md" --exclude "UNLICENSE" \
          --exclude ".gitignore" --exclude "update.sh" --exclude "docs/" \
          --exclude "screenshot.png" --exclude "colors.png" \
          --exclude "init-linux.sh" --exclude ".gitconfig.example" \
          -av --no-perms . ~;
    echo "done"
}

if [ ! -f .gitconfig ]; then
  echo "Must create a .gitconfig"
  echo "    > cp .gitconfig.example .gitconfig"
  echo "    > nano .gitconfig"
  exit 1
fi

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    update;
else
    read -p "This will destroy local changes to this directory and may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        update;
    fi;
fi;
unset update;
