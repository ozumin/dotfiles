if has('vim_starting')
  set rtp+=~/dotfiles/.vim/plugged/vim-plug
  if !isdirectory(expand('~/dotfiles/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/dotfiles/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/dotfiles/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/dotfiles/.vim/plugged')
  Plug 'junegunn/vim-plug',
        \ {'dir': '~/dotfiles/.vim/plugged/vim-plug/autoload'}

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
    endif
  let g:deoplete#enable_at_startup = 1

  Plug 'jalvesaq/Nvim-R'
  Plug 'soramugi/auto-ctags.vim'
  Plug 'slim-template/vim-slim'
call plug#end()

syntax on
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set number
set noswapfile
set clipboard=unnamed
set nocompatible
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set guioptions+=a
setlocal tabstop=2 shiftwidth=2 softtabstop=2
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
