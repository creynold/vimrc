
"" Pathogen settings
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set nocompatible

" Change leader
let mapleader = ","

" Code settings
syntax on
set textwidth=80
set colorcolumn=80
"set tabstop=8
set softtabstop=4
"set shiftwidth=4
set autoindent
set expandtab
set nowrap
set textwidth=0 wrapmargin=0

set relativenumber
set number
set ruler

" Make it so jk returns to normal mode
inoremap jk <esc>

" Easy editing/sourcing of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>d :Dox<cr>

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
nnoremap <leader>td <Plug>TaskList
nnoremap <leader>g :GundoToggle<cr>

let g:pymode_rope = 0

" Set default GUI font to Inconsolata -- {{{
if has('gui_running')
    set guifont=Inconsolata\ Medium\ 12
    " Set color scheme
    colorscheme badwolf
else
    colorscheme molokai
endif
" }}}


" Vimscript file settings ---------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Markdown file settings ---------- {{{
augroup markdown
  autocmd!
  autocmd BufNewFile,BufRead *.md, setlocal filetype=ghmarkdown
" }}}

" HTML file settings ----------- {{{
augroup html
  autocmd!
  autocmd BufNewFile,BufRead *.html, setlocal shiftwidth=2
" }}}

" Python file settings ---------- {{{
augroup filetype_python
  autocmd!
  autocmd FileType python setlocal foldmethod=indent
  autocmd FileType python set foldlevel=99
" }}}

" CPP file settings ---------- {{{
augroup filetype_cpp
  autocmd!
  autocmd FileType cpp setlocal foldmethod=indent
  autocmd FileType cpp set foldlevel=99
  autocmd FileType cpp set shiftwidth=4
" }}}

" CSS file settings ---------- {{{
augroup filetype_css
  autocmd!
  autocmd FileType cpp set shiftwidth=2
" }}}

" LESS file settings ---------- {{{
augroup filetype_css
  autocmd!
  autocmd FileType less set shiftwidth=2
" }}}
