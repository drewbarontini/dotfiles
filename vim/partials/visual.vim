" *************************************
"
"   Visual
"
" *************************************

" -------------------------------------
"   Settings
" -------------------------------------

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set t_Co=256

" -------------------------------------
"   Theme
" -------------------------------------

set background=dark
color distinguished

" -------------------------------------
"   Custom Color Adjustments
" -------------------------------------

hi! LineNR guibg=NONE ctermbg=NONE
hi FoldColumn ctermbg=NONE
hi SignColumn ctermbg=NONE
hi htmlArg gui=italic
hi Comment gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
