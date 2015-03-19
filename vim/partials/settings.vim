" ====================================================
"   Settings
" ====================================================

" ========== Ack ========== "

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ========== Airline ========== "

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='solarized'
let g:airline_powerline_fonts=0
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ========== CtrlP ========== "

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*/log/*,*.so,*.swp,*.zip

" ========== EasyMotion ========== "

let g:EasyMotion_leader_key = '<leader>e'

" Display targets in uppercase
let g:EasyMotion_use_upper = 1

" Remove x, z, and ; from default key set, set group key priority
let g:EasyMotion_keys = 'ASDHJKLQWERTYUIMNOCVBPGF'

" Overwrite default target colors
hi link EasyMotionTarget Special
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First Type
hi link EasyMotionTarget2Second Type

" ========== Gist ========== "

let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1
let g:gist_update_on_write = 2
let g:gist_post_private = 1

" ========== Syntastic ========== "

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'php'],
                           \ 'passive_filetypes': ['html'] }

