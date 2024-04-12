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
eval "$(pyenv init -)"
# alias
alias g='git'
alias n='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#direnv
eval "$(direnv hook zsh)"

# export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mizuonagayama/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mizuonagayama/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mizuonagayama/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mizuonagayama/google-cloud-sdk/completion.zsh.inc'; fi
