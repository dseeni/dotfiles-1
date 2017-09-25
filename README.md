# dotfiles

These dotfiles contain all of the necessary packages, plugins and config I need to be a productive (python/Javascript) developer.

I've tested these dotfiles on both ubuntu and OS X (you'll need to fiddle with the install commands for OS X).

**NOTE - you will need vim version 8.0 or higher.**

## Contents

- custom config for vim, ack-grep, zsh and tmux
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- vim plugins:
 - [ctrlp.vim](https://github.com/kien/ctrlp.vim)
 - [nerdtree](https://github.com/scrooloose/nerdtree)
 - [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
 - [ale](https://github.com/w0rp/ale)
 - [termschool-vim-theme](https://github.com/marcopaganini/termschool-vim-theme)
 - [vim-fugitive](https://github.com/tpope/vim-fugitive)
 - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
 - [vim-airline](https://github.com/bling/vim-airline)
 - [tagbar](https://github.com/majutsushi/tagbar)
 - [goyo.vim](https://github.com/junegunn/goyo.vim)
 - [limelight.vim](https://github.com/junegunn/limelight.vim)
 - [vim-autocorrect](https://github.com/panozzaj/vim-autocorrect)
 - [vim-css-color](https://github.com/skammer/vim-css-color)
 - [vim-misc](https://github.com/xolox/vim-misc)
 - [vim-easytags](https://github.com/xolox/vim-easytags)
 - [vim-obsession](https://github.com/tpope/vim-obsession)
- TMUX plugins
 - [tpm](https://github.com/tmux-plugins/tpm)
 - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)

## Requirements

- Ensure you have zsh installed
```
sudo apt-get install zsh
```
- Ensure zsh is set as your default shell:
```
chsh -s $(which zsh)
```
Note: you will need to logout and log back in for this to take effect

- Ensure you have flake8 installed (for ale)
```
sudo pip install flake8
```
- Ensure you have exuberant-ctags installed (for vim tags and tagbar)
```
sudo apt-get install exuberant-ctags
```
- Ensure you have eslint requirements installed (for ale)
```
sudo npm install -g eslint babel-eslint eslint-plugin-react
```

- Set your terminal background to `#585858` for best integration with tmux config

## Installation

```
git clone https://github.com/tom-james-watson/dotfiles

cd dotfiles

./install.sh
```

## Updating

```
./update.sh
```
