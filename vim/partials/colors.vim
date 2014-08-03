" ====================================================
"   Colors
" ====================================================

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set t_Co=256
let g:solarized_termtrans = 1

set background=dark
colorscheme solarized

