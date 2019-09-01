#!/usr/bin/env bash
set -x

# This file will install all requirements needed on a debian-based distro

sudo apt update

echo Install necessary programs from apt repositories
sudo apt install git tmux fish neovim python-pip python3-pip npm ripgrep tldr htop tree clang fd-find -y

echo Switching shell to fish
chsh -s $(which fish)

echo Installing rust toolchain
curl https://sh.rustup.rs -sSf | sh

echo Installing go toolchain
sudo add-apt-repository ppa:longsleep/golang-backports -y
sudo apt-get update
sudo apt-get install golang-go -y

echo Installing get-iplayer
sudo add-apt-repository ppa:jon-hedgerows/get-iplayer
sudo apt install get-iplayer

echo Install python dependencies
sudo pip install flake8 python-language-server s-tui

echo Install python3 dependencies
sudo pip3 install neovim

echo Install node dependencies
sudo npm install -g n yarn eslint eslint-config-tomjwatson

echo Install the LTS version of node
sudo n lts

echo Install vim plugins
nvim +PlugInstall +qall

echo Install coc.nvim plugins
nvim +CocInstall coc-eslint coc-tslint coc-tsserver coc-json coc-html coc-stylelint coc-rls coc-pyls +qall
