" Pathogen settings
call pathogen#infect()
filetype plugin indent on

Helptags

" Change leader
let mapleader = ","

" Set color scheme
colorscheme badwolf

" Code settings
set textwidth=80
set colorcolumn=80
syntax on

" Define STX filetypes
au BufNewFile,BufRead *.es set filetype=c
au BufNewFile,BufRead *.ts set filetype=c
au BufNewFile,BufRead *.gls set filetype=c
au BufNewFile,BufRead *.lls set filetype=c

" Turn on line numbering/relative numbering
set relativenumber
set number
set ruler

" Make it so jk returns to normal mode
inoremap jk <esc>
vnoremap jk <esc>

" Easy editing/sourcing of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Useful shortcuts
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Plugin shortcuts
nnoremap <c-n> :NERDTreeToggle<cr>
nnoremap <leader>l :TagbarToggle<cr>


