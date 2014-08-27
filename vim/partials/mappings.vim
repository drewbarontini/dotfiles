" ====================================================
"   Mappings
" ====================================================

" ========== General ========== "

" Better defaults
nnoremap ; :
inoremap jk <esc>

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
noremap <C-t> <esc>:tabnew<cr>

" Save file
noremap <C-s> <esc>:w<cr>
inoremap <C-s> <esc>:w<cr>

" Directory of Current File
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Jump out of parenthesis, brackets, etc.
inoremap <C-e> <C-o>A

" Insert newlines
nnoremap J O<esc>Dj
nnoremap K o<esc>Dk

" Copy to end of line
nnoremap Y y$

" ========== Leader ========== "

" == Non-Alphanumeric == "

" Switch between buffers
nnoremap ,, <C-^>

" Tabularize
vnoremap <leader>= :Tabularize /

" == A == "

" Open a new tab and search for something with Ack
nnoremap <leader>aa :Ack! ""<Left>

" Search for word under cursor with Ack
nnoremap <leader>AA :Ack! <C-r><C-w><cr>

" == B == "

" bundle install
nnoremap <leader>B :!bundle install<cr>

" Open CtrlP buffer search
nnoremap <leader>b :CtrlPBuffer<cr>

" == C == "

" Copy whole file, store in register
nnoremap <leader>co ggVG"*y

" == D == "

" Delete all text in file
nnoremap <leader>do ggdG

" == E == "

" ...

" == F == "

" Standard CtrlP window
nnoremap <leader>f :CtrlP<cr>

" Clear CtrlP cache
nnoremap <silent> <leader>F :ClearCtrlPCache<cr>

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

" Clear the search buffer when hitting return
nnoremap <silent> <leader>l :nohlsearch<cr>

" == M == "

" Open current file in Marked 2 application
nnoremap <leader>m :!open -a Marked\ 2.app "%"<cr>

" == N == "

" Open up Dropbox notes.txt file
nnoremap <leader>ns :vsp ~/Dropbox\ (Personal)/Notes/notes-scratch.txt<cr>

" Open up Dropbox notes directory
nnoremap <leader>no :e ~/Dropbox\ (Personal)/Notes/<cr>

" Open or create Dropbox notes file
nnoremap <leader>nc :vsp ~/Dropbox\ (Personal)/Notes/

" == O == "

" ...

" == P == "

" Duplicate current line, paste after
nnoremap <leader>p Yp

" == Q == "

" Quit
nnoremap <leader>q :q<cr>

" == R == "

" Open .vimrc
nnoremap <leader>rc :e ~/.dotfiles/vim/vimrc<cr>

" Replace current search with...
nnoremap <leader>rs :%s//

" Open Vim mappings file
nnoremap <leader>rm :e ~/.dotfiles/vim/partials/mappings.vim<cr>

" == S == "

" Shell command
nnoremap <leader>S :!<space>

" Trim trailing whitespace
nnoremap <silent> <leader>s :%s/\s\+$//<cr>:let @/=''<cr>

" Open snippets
nnoremap <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>

" Edit currently scoped snippets
nnoremap <leader>se :UltiSnipsEdit<cr>

" == T == "

" Run RSpec test for current file
nnoremap <leader>t :!bundle exec rspec %<cr>

" == U == "

" IndentGuidesToggle
nnoremap <silent> <leader>ug <Plug>IndentGuidesToggle

" == V == "

" Vertical split
nnoremap <leader>v <C-w>v<C-w>l

" Goyo trigger
nnoremap <leader>V :Goyo<cr>

" == W == "

" Save file
nnoremap <leader>w :w<cr>
nnoremap <leader>W :x<cr>

" == X == "

" ...

" == Y == "

" Copy line, paste before current line
nnoremap <leader>y YP

" == Z == "

" Quicker action to suspend Vim ('fg' to return)
nnoremap <leader>z <C-z>

