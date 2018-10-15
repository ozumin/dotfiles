#!/bin/sh
ln -sf ~/dotfiles/.latexmkrc ~/.latexmkrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zlogin ~/.zlogin
ln -sf ~/dotfiles/.zlogout ~/.zlogout
ln -sf ~/dotfiles/.zprofile ~/.zprofile
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
if [ ! -L ~/.zprezto -a -d ~/dotfiles/prezto ]; then
    ln -s ~/dotfiles/prezto ~/.zprezto
fi
