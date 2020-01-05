#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
### Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
  export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
  source /usr/local/bin/virtualenvwrapper.sh
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#export XDG_CONFIG_HOME=$HOME/.config
export XDG_CONFIG_HOME=$HOME/dotfiles
#PATH=$PATH:/usr/local/texlive/2016/bin/x86_64-darwin/
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick@6/6.9.10-11/lib/pkgconfig
export PATH="$HOME/.yarn/bin:$PATH"
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
setopt nonomatch
# brew で rmtrashをインストール
#alias rm='rmtrash'
# pyenv path
#export PYENV_ROOT=$HOME/.pyenv
#export PATH=$PYENV_ROOT/bin:$PATH
#export PYENV_ROOT=/usr/local/var/pyenv
#export PATH="$HOME/.pyenv/shims:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
alias g='git'
alias n='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
