syntax on
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set number
set noswapfile
set clipboard=unnamed,autoselect
set nocompatible
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set guioptions+=a
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
setlocal tabstop=2 shiftwidth=2 softtabstop=2
call plug#begin('~/.vim/plugged')

  Plug 'soramugi/auto-ctags.vim'
  Plug 'slim-template/vim-slim'

call plug#end()
