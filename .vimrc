" kind of ugly way to stop loading indent files for these STX types
let blacklist = ['ts','es','gls','lls']

"" Pathogen settings
call pathogen#infect()
filetype plugin on
au BufNewFile,BufRead * if index(blacklist, &ft) < 0 | filetype indent on

Helptags

set nocompatible

" Change leader
let mapleader = ","

" Set color scheme
colorscheme badwolf

" Code settings
set textwidth=100
set colorcolumn=100
syntax on
set shiftwidth=4
set tabstop=8
set softtabstop=4
set autoindent
set expandtab
set nowrap
set textwidth=0 wrapmargin=0

" Define STX filetypes
au BufNewFile,BufRead *.es set filetype=c
au BufNewFile,BufRead *.ts set filetype=c
au BufNewFile,BufRead *.gls set filetype=c
au BufNewFile,BufRead *.lls set filetype=c
au FileType c setlocal smartindent
au FileType c filetype indent off

set relativenumber
set number
set ruler

" Make it so jk returns to normal mode
inoremap jk <esc>

" Easy editing/sourcing of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Useful shortcuts
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader><space> bi<space><esc>ea<space><esc>

" Plugin shortcuts
nnoremap <c-n> :NERDTreeToggle<cr>
nnoremap <c-k> <c-w>k
nnoremap <c-j> <c-w>j
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

nnoremap <leader>l :TagbarToggle<cr>


" Vimscript file settings ---------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
