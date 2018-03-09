" *************************************
"
"   General Configuration
"
" *************************************

" -------------------------------------
"   Base
" -------------------------------------

set backspace=indent,eol,start " Allow backspace in Insert mode
set history=1000               " Store :cmdline history
set visualbell                 " No sounds
set autoread                   " Reload files changed outside of Vim
set noshowmode
set nocursorline
set mousehide
set showmatch
set laststatus=2
set lazyredraw
set ttyfast
set regexpengine=1

" set number                     " Line numbers are good
" set relativenumber             " Relative line numbers
" Smart line numbers
" autocmd WinEnter,FocusGained * :setlocal number relativenumber
" autocmd WinLeave,FocusLost   * :setlocal number norelativenumber

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Make vim clipboard available
set clipboard=unnamed

" Get rid of the delay when hitting esc!
set noesckeys
set ttimeout
set ttimeoutlen=1

" Remove dotted line on split windows
set fillchars+=vert:\

" Change leader key
map , <leader>
map <Space> <leader>

" -------------------------------------
"   Swap Files
" -------------------------------------

set noswapfile
set nobackup
set nowb

" -------------------------------------
"   Indentation
" -------------------------------------

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set list listchars=tab:»·,trail:· "Display extra whitespace

set nowrap    "Don't wrap lines
set linebreak "Wrap at convenient points

" -------------------------------------
"   Scrolling
" -------------------------------------

set scrolloff=4

" -------------------------------------
"   Folds
" -------------------------------------

set foldcolumn=1

" -------------------------------------
"   Rules
" -------------------------------------

set ruler
set colorcolumn=80

" -------------------------------------
"   Search
" -------------------------------------

set incsearch
set hlsearch
set ignorecase
set smartcase
