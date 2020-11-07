set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'editorconfig/editorconfig-vim'
Plug 'ycm-core/YouCompleteMe'

" Themes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on

syntax on
"let g:gruvbox_guisp_fallback = "bg"
"colorscheme gruvbox
"set background=dark

augroup SpellUnderline
    autocmd!
    autocmd ColorScheme *  highlight SpellBad cterm=standout ctermfg=Red
augroup END

set t_Co=256
colorscheme solarized
set background=light
let g:syntastic_carp_checkers = ['carp']

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

" Toggle relative  line numbers (insert/normal mode)
set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let g:airline_powerline_fonts = 1
let g:limelight_conceal_ctermfg = 1
let g:airline#extensions#tabline#enabled = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3

inoremap jj <esc>
nnoremap ; :

" window navigation
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" remove white space on save
autocmd BufWritePre * :%s/\s\+$//e

set spellfile=~/.vim/spell/en.utf-8.add
autocmd FileType markdown,tex setlocal spell

