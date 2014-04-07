
"........................................................................
"     stuff that I have added
"........................................................................
set columns=80
set lines=28
set ruler
set showmode
set noerrorbells
set nowrap

" wraps lines that become greater than 80 characters
set tw=80

" tabs should be four spaces
set tabstop=2
set shiftwidth=2
set expandtab

" set initial font size
set guifont=Menlo:h13

" add line numbers on the side
set number

" a map for navigating buffers
set wildchar=<Tab> wildmenu wildmode=full

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" for pathogen making it easier to install plugins
" https://github.com/tpope/vim-pathogen
call pathogen#infect()

" folding
set foldmethod=syntax
set foldlevel=1
let javaScript_fold=1

" for NERDTreeToggle
let mapleader = "\\"
map <Leader>n :NERDTreeToggle<CR>  

" for vim-ruby
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" for color schemes
syntax enable
set background=dark
" colorscheme solarized
colorscheme moria
