" Bundle Plugin
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'flazz/vim-colorschemes'
Plugin 'sbdchd/neoformat'
Plugin 'haya14busa/incsearch.vim'


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
" colorscheme stackoverflow
" colorscheme PaperColor

let mapleader = "\<Space>"
set t_Co=256
set background=dark

syntax on

" set tabs to have 4 spaces
set ts=4
set shiftwidth=2
" make backspaces do more at once
set softtabstop=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" No line wrapping
set nowrap

" show line numbers
set number
set ruler
set wildmenu

" No folding
set nofoldenable

" set hlsearch
" set incsearch

" set signcolumn=yes

" Cursor lines
map <leader>- :set cursorcolumn!<Bar>set cursorline!<CR>

" show the matching part of the pair for [] {} and ()
set showmatch

" Enable mouse for scrolling and resizing
set mouse=a

" Allow backspacing over indention, line breaks and insertion start
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>
" nnoremap K 30k <bar> zz
" nnoremap J 30j <bar> zz
nnoremap K 15k 
nnoremap J 15j
nnoremap j gj
nnoremap k gk
" set cursorline
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>
" space w to save 
nmap <Leader>w :w<CR>
set splitright
