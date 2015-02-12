" Pathogen settings
call pathogen#infect()
filetype plugin indent on

" Change leader
let mapleader = ","

" Set color scheme
colorscheme badwolf

" Code settings
syntax on

" Turn on line numbering/relative numbering
set relativenumber
set number

" Make it so jk returns to normal mode
inoremap jk <esc>
vnoremap jk <esc>

" Easy editing/sourcing of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
