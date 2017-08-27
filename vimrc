syntax on
set background=dark

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

"Fix for backspaces
set backspace=2

set tags=./tags;

"Vundle Stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

"Plugins
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'StanAngeloff/php.vim'
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
"Plugin 'wlue/vim-dm-syntax'
"Plugin 'wting/rust.vim'

call vundle#end()
"filetype plugin indent on
filetype on

"Plugin Config
colorscheme gruvbox

"Sets CtrlP to use 'The Silver Searcher' if available
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  
  "Ag is fast enough to not need caching
  let g:ctrlp_use_caching = 0
endif
