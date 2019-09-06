syntax on
"filetype indent plugin on
set nocompatible              " required
filetype off                  " required

" if changes are made from outside read them in
set autoread
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-fugitive'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'
Plugin 'python/black'
Plugin 'itchyny/lightline.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Key Remapping
:inoremap jj <Esc>
map <leader>bp Obreakpoint()<esc>
" Arrow Keys are bad
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

set number

" ---- Minimal configuration:
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4  " Set number of spaces per auto indentation
set expandtab     " When using <Tab>, put spaces instead of a <tab>

" ---- Good to have for consistency
set tabstop=4   " Number of spaces that a <Tab> in the file counts for
set smarttab    " At <Tab> at beginning line inserts spaces set in

" ---- Relative Line Numbers
set relativenumber
set nu rnu

set scrolloff=1
set ignorecase
set hlsearch
set noerrorbells

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

colorscheme onedark
"---- Copy to clipbaord:
"set clipboard=unnamed " stopped this to keep copying straight
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+Y
noremap <Leader>P "+P
noremap <Leader>c V"*y

map <leader>tn :tabnew<cr>
map <leader>tf :tabfind<cr>

" fuzzy file match
set path+=**
" backspace through whatever in insert mode
set backspace=indent,eol,start
" start search before pressing enter
set incsearch
set ttimeout
set ttimeoutlen=100
" Statusline Stuff
set laststatus=2  " always show statusline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
" autocmd BufWritePost *.py execute ':Black'

" close annoying YouCompleteMe scratch space
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" netrw setting
let g:netrw_browse_split = 3
let g:netrw_liststyle = 3
let g:netrw_banner = 0
