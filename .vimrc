set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'davidhalter/jedi-vim' " auto-completion
Plugin 'scrooloose/syntastic' " syntax checking
Plugin 'scrooloose/nerdtree'  " file tree view
Plugin 'kien/ctrlp.vim'       " fast search
Plugin 'sickill/vim-monokai'     " terminal mode colors
Plugin 'altercation/vim-colors-solarized' " GUI mode colors

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable tab vim command completion
set wildmode=longest,list,full
set wildmenu

" set leader to space
let mapleader=" "

" set split to right
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set utf-8
set encoding=utf-8

" system clipboard
set clipboard=unnamed

" go to definition by split
let g:jedi#use_splits_not_buffers = "right"

" select first line of completion menu
let g:jedi#popup_select_first = 0

" file tree view
autocmd vimenter * NERDTree

" color scheme
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme monokai
endif


