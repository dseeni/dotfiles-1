# Quick find shortcut
function fnd
  find ./ -iname "*$argv[1]*"
end

# Efficient image resize tool using imagemagick - taken from https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/
function smartresize
  mogrify -path $argv[3] -filter Triangle -define filter:support=2 -thumbnail $argv[2] -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB $argv[1]
end

function alt
  /usr/bin/osascript -e "display notification with title \"$argv\""
  say $argv
end

# Set up Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
set -gx PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $PATH

# Set up flutter
set -gx PATH ~/dev/flutter/bin $PATH

# Set up Postgres
set -gx PATH /Library/PostgreSQL/10/bin/ $PATH

# Set up Rust
set -gx PATH ~/.cargo/bin $PATH

# Alias for acking python src files more cleanly
alias ack-src='ack --py --ignore-file=match:test --ignore-file=match:migrat --ignore-dir=_scripts'

# Common aliases
alias l='ls -lha'
alias vi='vim'

# Git shortcut aliases
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
alias gld='git log --decorate'
alias gf='git fetch origin'

# Make ag look in hidden files by default
alias ag='ag --hidden'

# Soure awsrc if it exists
if test -f ~/.awsrc
    . ~/.awsrc;
end

. ~/.config/fish/z.fish
