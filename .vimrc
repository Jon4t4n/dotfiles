set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'

call vundle#end() 

filetype plugin indent on

syntax on
let g:gruvbox_guisp_fallback = "bg"
colorscheme gruvbox
set background=dark

set noerrorbells
set vb t_vb=
set undodir=~/.vim/undodir
set undofile
set noswapfile
set nu
set history=1000
set autoread
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set cursorline
set showmatch
set colorcolumn=80

autocmd FileType markdown,tex setlocal spell
