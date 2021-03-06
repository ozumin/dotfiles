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
export XDG_CONFIG_HOME=$HOME/dotfiles
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick@6/6.9.10-11/lib/pkgconfig
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
setopt nonomatch
# brew で rmtrashをインストール
# alias rm='rmtrash'
# pyenv path
export PYENV_ROOT=/usr/local/var/pyenv
export PATH="$HOME/.pyenv/shims:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# alias
alias g='git'
alias n='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#direnv
eval "$(direnv hook zsh)"
