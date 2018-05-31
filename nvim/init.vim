if &compatible
  set nocompatible
endif
set runtimepath+=~/dotfiles/repos/github.com/Shougo/dein.vim

call dein#begin(expand("~/.cache/dein"))

call dein#add('cohama/lexima.vim')
if dein#check_install()
  call dein#install()
endif
call dein#end()

set clipboard=unnamed
