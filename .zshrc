# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/tom/.rvm/bin"

# Personal

unsetopt share_history # don't share command history data
DISABLE_AUTO_UPDATE="true"

if [ -f ~/.bashrc_conv ]; then
    . ~/.bashrc_conv
fi

if [ -f ~/.bashrc_conv_personal ]; then
    . ~/.bashrc_conv_personal
fi

. ~/.myrc
