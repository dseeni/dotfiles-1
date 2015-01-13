# dotfiles

These dotfiles contain all of the necessary packages, plugins and config I need to be a productive (python/Javascript) developer.

I've only ever used these on Ubuntu, but they should work on other Ubuntu-based distros.

## Contents

- custom config for vim, ack-grep, zsh and tmux
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- vim plugins:
 - [ctrlp.vim](https://github.com/kien/ctrlp.vim)
 - [nerdtree](https://github.com/scrooloose/nerdtree)
 - [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
 - [syntastic](https://github.com/scrooloose/syntastic)
 - [vim-distinguished](https://github.com/Lokaltog/vim-distinguished)
 - [vim-fugitive](https://github.com/tpope/vim-fugitive)
 - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
 - [vim-powerline](https://github.com/Lokaltog/vim-powerline)
 - [goyo.vim](https://github.com/junegunn/goyo.vim)
 - [limelight.vim](https://github.com/junegunn/limelight.vim)
 - [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect)
 - [vim-css-color](https://github.com/skammer/vim-css-color)

## Requirements

- Ensure you have zsh installed
```
sudo apt-get install zsh
```
- Ensure zsh is set as your default shell:
```
chsh -s `which zsh` $USER;
```
Note: you will need to logout and log back in for this to take effect

- Ensure you have flake8 and pep257 installed (for vim-syntastic)
```
sudo pip install flake8 pep257
```

## Installation

**NOTE - you must include the `--recursive` option on your git clone**

```
git clone --recursive https://github.com/tom-james-watson/dotfiles

cd dotfiles

./install.sh
```

## Updating

In your dotfiles directory:
```
git pull

git submodule update --init

./install.sh
```
