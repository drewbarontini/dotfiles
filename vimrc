" ----------------------------------------------------
"   Initialize
" ----------------------------------------------------

set nocompatible
filetype off

" ----------------------------------------------------
"   Vundle
" ----------------------------------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" ----------------------------------------------------
"   Bundles
" ----------------------------------------------------

Bundle 'AutoClose'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'bronson/vim-visual-star-search'
Bundle 'ervandew/supertab'
Bundle 'garbas/vim-snipmate'
Bundle 'godlygeek/tabular'
Bundle 'goldfeld/vim-seek'
Bundle 'idanarye/vim-merginal'
Bundle 'junegunn/goyo.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nelstrom/vim-qargs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vinegar'

" ----------------------------------------------------
"   Airline
" ----------------------------------------------------

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='solarized'
let g:airline_powerline_fonts=0
let g:airline_branch_prefix = '⎇ '
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ----------------------------------------------------
"   Synctastic
" ----------------------------------------------------

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'php'],
                           \ 'passive_filetypes': ['html'] }

" ----------------------------------------------------
"   General Configuration
" ----------------------------------------------------

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

filetype indent plugin on

set number
set nowrap
set linebreak
set ruler
set cursorline
set mousehide
set visualbell
set autoread
set ttyfast
set showmatch
set noshowmode
set backspace=indent,eol,start
set laststatus=2
set scrolloff=4
set foldcolumn=1

" Rulers
set colorcolumn=72

" Larger line-height
set linespace=3

" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set wildmenu
set wildmode=list:longest
set completeopt=longest,menuone

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" No swap files
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50

" Make vim clipboard available
set clipboard=unnamed

" Get rid of the delay when hitting esc!
set noesckeys

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

" Remove dotted line on split windows
set fillchars+=vert:\

" ----------------------------------------------------
"   Indentation
" ----------------------------------------------------

set autoindent
set smartindent
set smarttab

" Softtabs, 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" ----------------------------------------------------
"   Search
" ----------------------------------------------------

set cursorline
set incsearch
set hlsearch
set ignorecase
set smartcase

" ----------------------------------------------------
"   Syntax Highlighting & Theme
" ----------------------------------------------------

set t_Co=256
let g:solarized_termtrans = 1

set background=dark
colorscheme solarized

" ----------------------------------------------------
"   Mappings
" ----------------------------------------------------

" ----- General Mappings ----- "

" Change leader key
let mapleader = ","

nmap ; :
nmap <space> :
imap jj <esc>

" Remap window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open split and make active
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

" Trim trailing whitespace
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<cr>

" Jump out of parenthesis, brackets, etc.
inoremap <C-e> <C-o>A

" Switch between buffers
map <leader><leader> <C-^>

" Shell command
nmap <leader>S :!<space>

" Run 'bundle install'
map <leader>bb :! bundle install<cr>

" Copy whole file, store in register
map <leader>co ggVG"*y

" Replace current search with...
map <leader>rs :%s//

" Save file
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

" New tab
map <C-t> <esc>:tabnew<cr>

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <leader>l :nohlsearch<cr>
endfunction
call MapCR()

" Directory of Current File
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" NO Arrow Keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" ----- Open File Mappings ----- "

" Open .vimrc
nnoremap <leader>rc :tabedit $MYVIMRC<cr>

" Open up Dropbox notes.txt file
map <leader>ns :sp ~/Dropbox/Notes/notes-scratch.txt<cr>
" Open up Dropbox notes directory
map <leader>no :e ~/Dropbox/Notes/<cr>
" Open or create Dropbox notes file
map <leader>nc :sp ~/Dropbox/Notes/

" Open a new tab and search for something
nmap <leader>aa :Ack! ""<Left>
" Search for word under cursor
nmap <leader>AA :Ack! <C-r><C-w><cr>

" CtrlP
nnoremap ff :CtrlP<cr>

" Open snippets
map <leader>p :tabedit ~/.dotfiles/vim/snippets<cr>

" Goyo
nnoremap <leader>V :Goyo<cr>

" ----- Rails Mappings ----- "

map <leader>bb :!bundle install<cr>
map <leader>t :!bundle exec rspec %<cr>

" ----- Multi-purpose Tab Key ----- "
" Indent if we're at the beginning of a line. Else, do completion.

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" ----- Rename File ----- "

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>rn :call RenameFile()<cr>

" ----------------------------------------------------
"   Filetypes
" ----------------------------------------------------

filetype indent plugin on

autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal wrap
autocmd Filetype markdown setlocal linebreak
autocmd Filetype markdown setlocal nolist
autocmd BufNewFile,BufRead *.scss set ft=scss.css
autocmd BufNewFile,BufRead *.sass set ft=sass.css

" ----------------------------------------------------
"   Plugin-specific Settings
" ----------------------------------------------------

" CtrlP
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*/log/*,*.so,*.swp,*.zip

" EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

" Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" ----------------------------------------------------
"   Autosave
" ----------------------------------------------------

if has('autocmd')
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
