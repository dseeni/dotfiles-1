# dotfiles

These dotfiles contain all of the necessary packages, plugins and config I need to be a productive (Python/Javascript/Rust/C) developer. They mostly concern vim, tmux, [Kitty](https://sw.kovidgoyal.net/kitty) and [fish](https://fishshell.com/).

![my setup](./screenshot.png)

I've tested these dotfiles on both ubuntu and macOS.

## Contents

- custom config for vim/nvim, ack-grep, fish, eslint, tmux and kitty
- vim plugins:
  - [ale](https://github.com/w0rp/ale)
  - [ctrlp.vim](https://github.com/kien/ctrlp.vim)
  - [nerdtree](https://github.com/scrooloose/nerdtree)
  - [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
  - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  - [vim-airline](https://github.com/bling/vim-airline)
  - [vim-easytags](https://github.com/xolox/vim-easytags)
  - [vim-polyglot](https://github.com/sheerun/vim-polyglot)
  - [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim)
- vim colorschemes:
  - [termschool-vim-theme](https://github.com/marcopaganini/termschool-vim-theme)
- TMUX plugins
  - [tpm](https://github.com/tmux-plugins/tpm)
  - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
  - [tmux-yank](https://github.com/tmux-plugins/tmux-yank)

## Requirements

- Ensure you have either vim >= 8.0 or neovim installed

These dotfiles are designed to work best with the Kitty terminal emulator, although any other emulator can be used.
- Download and install the latest kitty binaries here - https://sw.kovidgoyal.net/kitty/binary.html. If you want to use a different terminal emulator, configure your terminal background color to `#3a3a3a` for best integration with my vim/tmux config.

- Ensure you have fish installed
```
linux:
sudo apt-get install fish

mac:
brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
```

- On macOS, set fish as your default shell:
```
chsh -s $(which fish)
```
You will need to logout and log back in for this to take effect.

On linux, weird things happen if you set fish as the default shell, so instead [we have set fish][./.tmux-linux.conf] as the default command for tmux. You can also set fish as the defalt command to run in your terminal emulator, for if you are not using tmux.

- Ensure you have flake8 (for ale python linting) and python-language-server (autocompletion) installed
```
sudo pip install flake8 python-language-server
```

- Ensure you have the python3 neovim interface installed, if you want to use neovim
```
pip3 install neovim
```

- Ensure you have exuberant-ctags installed (for vim tags and tagbar)
```
linux:
sudo apt-get install exuberant-ctags

mac:
brew install ctags
```

- Ensure you have JS/TS language server and eslint requirements installed
```
sudo npm install -g eslint eslint-config-tomjwatson javascript-typescript-stdio typescript-language-server typescript
```

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

- Pull the latest configs from git and install them

```
./update.sh
```

- To update all vim plugins, open vim and run

```
:PlugUpdate
```
