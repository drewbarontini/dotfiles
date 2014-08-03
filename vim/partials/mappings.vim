" ====================================================
"   Mappings
" ====================================================

" ========== General ========== "

" Better Vim defaults
nmap ; :
nmap <space> :
imap jj <esc>

" NO Arrow Keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" ========== Window Management ========== "

" Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Splits
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

" Switch between buffers
map <leader><leader> <C-^>

" New tab
map <C-t> <esc>:tabnew<cr>

" ========== Commands ========== "

nmap <leader>S :!<space>                "Shell command
map <leader>rs :%s//                    "Replace current search with...
cnoremap %% <C-R>=expand('%:h').'/'<cr> "Directory of Current File
map <leader>co ggVG "*y                 "Copy whole file, store in register

" Save file
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

" ========== Functions ========== "

nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<cr> "Trim trailing whitespace
inoremap <C-e> <C-o>A                            "Jump out of parenthesis, brackets, etc.

" ========== Open File(s) ========== "

nnoremap <leader>rc :tabedit $MYVIMRC<cr>                "Open .vimrc
map <leader>ns :sp ~/Dropbox/Notes/notes-scratch.txt<cr> "Open up Dropbox notes.txt file
map <leader>no :e ~/Dropbox/Notes/<cr>                   "Open up Dropbox notes directory
map <leader>nc :sp ~/Dropbox/Notes/                      "Open or create Dropbox notes file
map <leader>p :tabedit ~/.dotfiles/vim/snippets<cr>      "Open snippets

" ========== Rails ========== "

map <leader>bb :!bundle install<cr>
map <leader>t :!bundle exec rspec %<cr>

" ========== Apps/Plugins ========== "

" Ack
nmap <leader>aa :Ack!  ""<Left>      "Open a new tab and search for something
nmap <leader>AA :Ack! <C-r><C-w><cr> "Search for word under cursor

" CtrlP
nnoremap ff :CtrlP<cr>

" Goyo
nnoremap <leader>V :Goyo<cr>

" Marked
nmap <leader>m :!open -a Marked\ 2.app "%"<cr>

