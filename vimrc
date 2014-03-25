syntax on
set background=dark

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set tags=./tags;

"Vundle Stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

"Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-vividchalk'

filetype on

"Plugin Config
let color_scheme_path='~/.vim/bundle/vim-vividchalk/colors/vividchalk.vim'
if filereadable(color_scheme_path)
    source color_scheme_path
endif

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:syntastic_mode_map = { 'mode' : 'passive' }
