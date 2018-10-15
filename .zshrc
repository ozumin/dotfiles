#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#export XDG_CONFIG_HOME=$HOME/.config
export XDG_CONFIG_HOME=$HOME/dotfiles
#PATH=$PATH:/usr/local/texlive/2016/bin/x86_64-darwin/
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick@6/6.9.10-11/lib/pkgconfig

setopt nonomatch
