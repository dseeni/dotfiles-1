# dotfiles

These dotfiles contain all of the necessary packages, plugins and config I need to be a productive (Python/Javascript) developer. They mostly concern [Kitty](https://sw.kovidgoyal.net/kitty), [fish](https://fishshell.com/), tmux and vim.

![my setup](./screenshot.png)

I've tested these dotfiles on both ubuntu and OS X.

## Contents

- custom config for vim/nvim, ack-grep, fish, eslint, tmux and kitty
- vim plugins:
  - [ale](https://github.com/w0rp/ale)
  - [ctrlp.vim](https://github.com/kien/ctrlp.vim)
  - [nerdtree](https://github.com/scrooloose/nerdtree)
  - [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
  - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  - [lightline.vim](https://github.com/itchyny/lightline.vim)
  - [tagbar](https://github.com/majutsushi/tagbar)
  - [vim-easytags](https://github.com/xolox/vim-easytags)
  - [vim-javascript](https://github.com/pangloss/vim-javascript)
  - [vim-jsx](https://github.com/mxw/vim-jsx)
  - [typescript-vim](https://github.com/leafgarland/typescript-vim)
- vim colorschemes:
  - [termschool-vim-theme](https://github.com/marcopaganini/termschool-vim-theme)
- TMUX plugins
  - [tpm](https://github.com/tmux-plugins/tpm)
  - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
  - [tmux-yank](https://github.com/tmux-plugins/tmux-yank)

## Requirements

- These dotfiles are designed to work best with the Kitty terminal emulator. Download and install the latest binaries here - https://sw.kovidgoyal.net/kitty/binary.html

- Ensure you have either vim >= 8.0 or neovim installed

- Ensure you have fish installed
```
linux:
sudo apt-get install fish

mac:
brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
```
- Ensure fish is set as your default shell:
```
chsh -s $(which fish)
```
Note: you will need to logout and log back in for this to take effect

- Ensure you have flake8 installed (for ale python linting)
```
sudo pip install flake8
```
- Ensure you have exuberant-ctags installed (for vim tags and tagbar)
```
linux:
sudo apt-get install exuberant-ctags

mac:
brew install ctags
```
- Ensure you have eslint requirements installed (for ale js linting)
```
sudo npm install -g eslint eslint-config-tomjwatson
```
- Set your terminal background to `#3a3a3a` for best integration with tmux config

## Installation

- Clone the repository and install the configs
```
git clone https://github.com/tom-james-watson/dotfiles

cd dotfiles

./install.sh
```

- To install the tmux plugins, start tmux and run `prefix` + <kbd>I</kbd>.

- To install the vim plugins, open vim and run
```
:PlugInstall
```

## Updating

```
./update.sh
```
