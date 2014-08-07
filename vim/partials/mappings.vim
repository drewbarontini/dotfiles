" ====================================================
"   Mappings
" ====================================================

" ========== General ========== "

" Better defaults
nmap ; :
nmap <space> :
imap jj <esc>

" NO Arrow Keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Window sizing
nnoremap + <C-w>>
nnoremap _ <C-w><

" Tabs
map <C-t> <esc>:tabnew<cr>

" Save file
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

" Directory of Current File
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Jump out of parenthesis, brackets, etc.
inoremap <C-e> <C-o>A

" Insert newlines
nmap J O<esc>Dj
nmap K o<esc>Dk

" Copy to end of line
nnoremap Y y$

" ========== Leader ========== "

" == Non-Alphanumeric == "

" Switch between buffers
map <leader><leader> <C-^>

" Tabularize
vnoremap <leader>= :Tabularize /

" == A == "

" Open a new tab and search for something with Ack
nmap <leader>aa :Ack! ""<Left>

" Search for word under cursor with Ack
nmap <leader>AA :Ack! <C-r><C-w><cr>

" == B == "

" bundle install
map <leader>B :!bundle install<cr>

" Open CtrlP buffer search
nnoremap <leader>b :CtrlPBuffer<cr>

" == C == "

" Copy whole file, store in register
map <leader>co ggVG "*y

" == D == "

" Delete all text in file
map <leader>do ggdG

" == E == "

" ...

" == F == "

" Standard CtrlP window
nnoremap <leader>f :CtrlP<cr>

" Clear CtrlP cache
nnoremap <leader>F :ClearCtrlPCache<cr>

" == G == "

" :Gbrowse
nnoremap <leader>gb :Gbrowse<cr>

" == H == "

" Horizontal split
nnoremap <leader>h <C-w>s<C-w>j

" == I == "

" ...

" == J == "

" ...

" == K == "

" ...

" == L == "

" ...

" == M == "

" Open current file in Marked 2 application
nmap <leader>m :!open -a Marked\ 2.app "%"<cr>

" == N == "

" Open up Dropbox notes.txt file
map <leader>ns :sp ~/Dropbox\ (Personal)/Notes/notes-scratch.txt<cr>

" Open up Dropbox notes directory
map <leader>no :e ~/Dropbox\ (Personal)/Notes/<cr>

" Open or create Dropbox notes file
map <leader>nc :sp ~/Dropbox\ (Personal)/Notes/

" == O == "

" ...

" == P == "

" Duplicate current line, paste after
nnoremap <leader>p Yp

" == Q == "

" ...

" == R == "

" Open .vimrc
nnoremap <leader>rc :e ~/.dotfiles/vim/vimrc<cr>

" Replace current search with...
map <leader>rs :%s//

" == S == "

" Shell command
nmap <leader>S :!<space>

" Trim trailing whitespace
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<cr>

" Open snippets
map <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>

" Edit currently scoped snippets
nnoremap <leader>se :UltiSnipsEdit<cr>

" == T == "

" Run RSpec test for current file
map <leader>t :!bundle exec rspec %<cr>

" == U == "

" IndentGuidesToggle
nmap <silent> <Leader>ug <Plug>IndentGuidesToggle

" == V == "

" Vertical split
nnoremap <leader>v <C-w>v<C-w>l

" Goyo trigger
nnoremap <leader>V :Goyo<cr>

" == W == "

" Save file
noremap <leader>w :w<cr>
noremap <leader>W :wq<cr>

" == X == "

" ...

" == Y == "

" Copy line, paste before current line
nnoremap <leader>y YP

" == Z == "

" ...

