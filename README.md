# dotfiles

## Contains

- custom config for vim, ack-grep, zsh and tmux
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- vim plugins:
 - [ctrlp.vim](https://github.com/kien/ctrlp.vim)
 - [goyo.vim](https://github.com/junegunn/goyo.vim)
 - [nerdtree](https://github.com/scrooloose/nerdtree)
 - [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
 - [syntastic](https://github.com/scrooloose/syntastic)
 - [vim-distinguished](https://github.com/Lokaltog/vim-distinguished)
 - [vim-fugitive](https://github.com/tpope/vim-fugitive)
 - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

## Requirements

- Ensure you have zsh installed
```
sudo apt-get install zsh
```
- Ensure zsh is set as yoru default shell:
```
chsh -s `which zsh` $USER;
```

## Installation

```
git clone https://github.com/tom-james-watson/dotfiles
cd dotfiles
git submodule update --init
./install.sh
```
