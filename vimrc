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
call vundle#rc()
Plugin 'gmarik/vundle'

"Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-vividchalk'
Plugin 'Valloric/YouCompleteme'

filetype on

"Plugin Config
"Resolves the vimrc if it's a symlink, then loads the color scheme
let color_scheme_path=expand('<sfile>:p:h') . '/.vim/bundle/vim-vividchalk/colors/vividchalk.vim'
let alternate_color_scheme_path=fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/bundle/vim-vividchalk/colors/vividchalk.vim'
if filereadable(color_scheme_path) 
    exec 'source ' . color_scheme_path
elseif filereadable(alternate_color_scheme_path)
    exec 'source ' . alternate_color_scheme_path
endif

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:syntastic_mode_map = { 'mode' : 'passive' }
