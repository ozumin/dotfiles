if has('vim_starting')
  set rtp+=~/dotfiles/.vim/plugged/vim-plug
  if !isdirectory(expand('~/dotfiles/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/dotfiles/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/dotfiles/.vim/plugged/vim-plug/autoload')
  endif
endif

call plug#begin('~/dotfiles/.vim/plugged')
  Plug 'junegunn/vim-plug',
        \ {'dir': '~/dotfiles/.vim/plugged/vim-plug/autoload'}

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
  endif
  let g:deoplete#enable_at_startup = 1

  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/denite.nvim'
  Plug 'jalvesaq/Nvim-R'
  Plug 'slim-template/vim-slim'
  Plug 'keith/rspec.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'scrooloose/nerdtree'
  Plug 'cohama/lexima.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'kassio/neoterm'
  Plug 'tpope/vim-fugitive'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'ngmy/vim-rubocop'
  Plug 'tpope/vim-rails'
  Plug 'w0rp/ale'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'shougo/context_filetype.vim'    " caw.vimを使いやすくするためのもの
  Plug 'tyru/caw.vim'    " gciでコメントアウト，gcaで行の最後にコメント付けられる
  Plug 'tpope/vim-surround'    " cs'(とかで囲ってるものを変化できる，ds'で消せる
call plug#end()

syntax on
set autoindent
set tabstop=2
set shiftwidth=2
set cursorline
set number
set incsearch
set noswapfile
set clipboard=unnamed
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set guioptions+=a
set showmatch "括弧入力時の対応する括弧を表示
setlocal tabstop=2 shiftwidth=2 softtabstop=2
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <Home>
imap <C-e> <End>

nnoremap :pluginstall :PlugInstall
nnoremap :plugclean :PlugClean
nnoremap :plugupgrade :PlugUpgrade
nnoremap :tree :NERDTreeToggle
let g:indentLine_color_term = 239
let g:tex_conceal = ''

" ファイル保存時にLinterを実行する
let g:ale_lint_on_save = 1
" テキスト変更時にはLinterを実行しない
let g:ale_lint_on_text_changed = 'never'
" Linter(コードチェックツール)の設定
let g:ale_linters = {
\   'python': ['flake8', 'mypy', 'black'],
\}
" ファイル保存時にはFixerを時刻しない
let g:ale_fix_on_save = 1
" テキスト変更時にはFixerを実行しない
let g:ale_fix_on_text_changed = 'never'
" Fixer(コード整形ツール)の設定
let b:ale_fixers = {
\   'python': ['autopep8', 'isort'],
\   'ruby': ['rubocop'],
\}
" 余分な空白があるときは警告表示
let b:ale_warn_about_trailing_whitespace = 0
" ALE実行時にでる目印行を常に表示
let g:ale_sign_column_always = 1
" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" 行の最初の文字の前にコメント文字をトグル
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

let g:indentLine_fileTypeExclude = ['markdown']

" ctagsの自動保存on
let g:gen_tags#ctags_auto_gen = 1

" タブ設定
filetype plugin on
filetype indent on
"sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
autocmd FileType html setlocal sw=2 sts=2 ts=2 et
