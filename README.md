# My dotfiles
contains:
- using prezto, a framework for zsh
- plugins using vim-plug
- nvim setting
- karabiner setting for vim
- latexmkrc for uplatex (lualatex in history)
- setting for tmux
- setting for htop
# How to use
pull this repository and do the following for prezto:
```
cd $ZPREZTODIR
git pull
git submodule update --init --recursive
```
install brew:
```
./init
```
install plugin for vim:
```
n
:PlugInstall
```
