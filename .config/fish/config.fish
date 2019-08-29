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
if test -d ~/dev/android-sdk
  export ANDROID_HOME=~/dev/android-sdk
  set -gx PATH ~/dev/android-sdk/tools ~/dev/android-sdk/platform-tools $PATH
end

# Set up userland global npm bin
if test -d ~/.npm-global
  set -gx PATH ~/.npm-global/bin $PATH
end

# Set up flutter
if test -d ~/dev/flutter/bin
  set -gx PATH ~/dev/flutter/bin $PATH
end

# Set up misc programs
if test -d ~/programs
  set -gx PATH ~/programs $PATH
end

# Set up local bin
if test -d ~/.local/bin
  set -gx PATH ~/.local/bin $PATH
end

# Set up snap bin
if test -d /snap/bin
  set -gx PATH /snap/bin $PATH
end

# Set up gcloud
if test -d ~/dev/google-cloud-sdk
  set -gx PATH ~/dev/google-cloud-sdk/bin $PATH
end
# gcloud mac
if [ -f '/Users/tomw/Downloads/google-cloud-sdk/path.fish.inc' ];
  . '/Users/tomw/Downloads/google-cloud-sdk/path.fish.inc';
end

# Set up Postgres
if test -d /Library/PostgreSQL/10/bin/
  set -gx PATH /Library/PostgreSQL/10/bin/ $PATH
end

# Set up Rust
if test -d ~/.cargo/bin
  set -gx PATH ~/.cargo/bin $PATH
end

# Alias for acking python src files more cleanly
alias ack-src='ack --py --ignore-file=match:test --ignore-file=match:migrat --ignore-dir=_scripts'

# Alias for converting spreadsheets to csvs
alias csvify='libreoffice --headless --convert-to csv --outdir . *.xlsx'

# Common aliases
alias l='ls -lha'
alias vi='nvim'
alias vim='nvim'
alias open='xdg-open'

# Git shortcut aliases
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
alias gld='git log --decorate'
alias gf='git fetch origin'

# Set locale explicitly. Mosh won't work without this
set -x LC_ALL en_GB.UTF-8

# Make ag look in hidden files by default
alias ag='ag --hidden'

# Soure awsrc if it exists
if test -f ~/.awsrc
    . ~/.awsrc
end

# Set color preferences
set -U fish_color_command "#33CD74"

. ~/.config/fish/z.fish
