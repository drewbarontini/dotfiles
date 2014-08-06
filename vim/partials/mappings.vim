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

" Sizing
nnoremap + <C-w>>
nnoremap _ <C-w><

" ========== Commands ========== "

" Shell command
nmap <leader>S :!<space>
" Replace current search with...
map <leader>rs :%s//
" Directory of Current File
cnoremap %% <C-R>=expand('%:h').'/'<cr>
" Copy whole file, store in register
map <leader>co ggVG "*y

" Save file
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

" ========== Functions ========== "

" Trim trailing whitespace
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<cr>
" Jump out of parenthesis, brackets, etc.
inoremap <C-e> <C-o>A

" ========== Open File(s) ========== "

" Open .vimrc
nnoremap <leader>rc :tabedit $MYVIMRC<cr>
" Open up Dropbox notes.txt file
map <leader>ns :sp ~/Dropbox/Notes/notes-scratch.txt<cr>
" Open up Dropbox notes directory
map <leader>no :e ~/Dropbox/Notes/<cr>
" Open or create Dropbox notes file
map <leader>nc :sp ~/Dropbox/Notes/
" Open snippets
map <leader>p :tabedit ~/.dotfiles/vim/UltiSnips<cr>

" ========== Rails ========== "

map <leader>bb :!bundle install<cr>
map <leader>t :!bundle exec rspec %<cr>

" ========== Apps/Plugins ========== "

" Ack
" Open a new tab and search for something
nmap <leader>aa :Ack! ""<Left>
" Search for word under cursor
nmap <leader>AA :Ack! <C-r><C-w><cr>

" CtrlP
nnoremap ff :CtrlP<cr>

" Git
nnoremap <leader>gb :Gbrowse<cr>

" Goyo
nnoremap <leader>V :Goyo<cr>

" Marked
nmap <leader>m :!open -a Marked\ 2.app "%"<cr>

" UltiSnips
nnoremap <leader>se :UltiSnipsEdit<cr>

