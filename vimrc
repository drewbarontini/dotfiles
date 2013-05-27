"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" ----- Pathogen ----- "

call pathogen#infect()

" ----- Powerline ----- "

set rtp+=/Users/Drew/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" ----- General Configuration ----- "

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=500                 "Store lots of :cmdline history
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set ttyfast
set showmatch
set mouse=a
set laststatus=2
set noshowmode
set list listchars=tab:\ \ ,trail:·
set nowrap
set linebreak
set ruler
set cursorline
set mousehide
set scrolloff=3
set foldcolumn=1
set wildmenu
set wildmode=list:longest

"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone

"This makes vim act like all other editors, buffers can
"exist in the background without being in a window.
"http://items.sjbach.com/319/configuring-vim-right
set hidden

"Save the file when focus is lost
au FocusLost * :wa

"No swap files
set noswapfile
set nobackup
set nowb

" ----- Indentation ----- "

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
filetype plugin on
filetype indent on

" ----- Search ----- "

set cursorline
set nohlsearch
set incsearch
set ignorecase
set smartcase

" ----- Mappings ----- "

let mapleader = ","

nmap <space> :

imap jj <esc>

"Remap window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Open split and make active
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

"Trim trailing whitespace
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>

"Open .vimrc
nnoremap <leader>rc :e $MYVIMRC<cr>

"Open up Dropbox notes.txt file
map <Leader>pn :sp ~/Dropbox/Notes/notes.txt<cr>
"Open or create Dropbox notes file
map <Leader>no :e ~/Dropbox/Notes/

"Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

"NERDTree toggle
nmap <leader>nt :NERDTreeToggle <CR>
map <leader>nb :NERDTreeFromBookmark

" ----- Syntax Highlighting & Theme ----- "

syntax enable
syntax on

set t_Co=256
let g:solarized_termtrans = 1

set background=light
colorscheme solarized

" ----- Filetypes ----- "

autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd! FileType mkd setlocal syn=off

" ----- Plugin-specific ----- "

"NERDTree
let g:NERDTreeWinSize = 50
let NERDTreeShowHidden=1

"EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

"Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

"GitGutter
let g:gitgutter_eager = 0

" ----- Reload vim on save ----- "

if has("autocmd")
  augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
  augroup END
endif
