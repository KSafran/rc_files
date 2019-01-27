syntax on
"filetype indent plugin on
set nocompatible              " required
filetype off                  " required

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


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

:inoremap jj <Esc>
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

map <silent> <leader>pdb Oimport pdb; pdb.set_trace()<esc>
set scrolloff=1
set statusline+=%#PmenuSel#
set statusline+=\ %p%%                " Percentage through file
set statusline+=\ %l:%c               " Line number:Column number

colorscheme onedark
"---- Copy to clipbaord:
set clipboard=unnamed

" fuzzy file match
set path+=**
" backspace through whatever in insert mode
set backspace=indent,eol,start
" start search before pressing enter
set incsearch
set ttimeout
set ttimeoutlen=100