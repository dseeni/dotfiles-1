#!/usr/bin/env bash
set -x

# This file will install all requirements needed on a debian-based distro

sudo apt update

echo Install necessary programs from apt repositories
sudo apt install git tmux fish neovim python-pip python3-pip npm ripgrep tldr htop tree

echo Switching shell to fish
chsh -s $(which fish)

echo Install n, a tool for managing node versions
sudo npm i -g n

echo Install the LTS version of node
sudo n lts

echo Install python dependencies
sudo pip install flake8 python-language-server s-tui

echo Install python3 dependencies
sudo pip3 install neovim

echo Install node dependencies
sudo npm install -g yarn eslint eslint-config-tomjwatson

echo Install vim plugins
nvim +PlugInstall +qall

echo Install coc.nvim plugins
nvim +CocInstall coc-eslint coc-tslint coc-tsserver coc-json coc-html coc-stylelint coc-rls coc-pyls +qall
