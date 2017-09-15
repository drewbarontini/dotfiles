" *************************************
"
"   Settings
"
" *************************************

" -------------------------------------
"   Airline
" -------------------------------------

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
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

" -------------------------------------
"   Ale
" -------------------------------------

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fixers = {
\ 'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

" -------------------------------------
"   CtrlP
" -------------------------------------

set wildignore+=*/tmp/*,*/log/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*
let g:ctrlp_custom_ignore = 'bower_components\|build\|bundle\|node_modules\|public'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" -------------------------------------
"   EasyMotion
" -------------------------------------

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

" -------------------------------------
"   Gist
" -------------------------------------

let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1
let g:gist_update_on_write = 2
let g:gist_post_private = 1

" -------------------------------------
"   Git Gutter
" -------------------------------------

let g:gitgutter_map_keys = 0

" -------------------------------------
"   Neoformat
" -------------------------------------

let g:neoformat_javascript_prettier = {
            \ 'exe': 'prettier',
            \ 'args': ['--stdin', '--parser flow', '--single-quote', '--trailing-comma es5', 'es6'],
            \ 'stdin': 1,
            \ }

" -------------------------------------
"   Pencil
" -------------------------------------

let g:pencil#wrapModeDefault = 'soft'

" -------------------------------------
"   Syntastic
" -------------------------------------

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'php'],
                           \ 'passive_filetypes': ['html'] }

" -------------------------------------
"   tmuxline
" -------------------------------------

let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
  \ 'left'      : '',
  \ 'left_alt'  : '',
  \ 'right'     : '',
  \ 'right_alt' : '',
  \ 'space'     : ' ' }
let g:tmuxline_preset = {
  \'a'    : '#S',
  \'win'  : '#I:#W',
  \'cwin' : '#I:#W',
  \'x'    : '#(spotify status)',
  \'y'    : ['#(date +"%m-%d-%y")', '#(date +"%I:%M")'],
  \'z'    : '#(battery-percentage)',
  \ 'options': {
    \'status-justify': 'left' } }

" -------------------------------------
"   Tmux Navigator
" -------------------------------------

let g:tmux_navigator_no_mappings = 1
