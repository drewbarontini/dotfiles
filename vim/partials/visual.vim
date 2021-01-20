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

if (has("termguicolors"))
 set termguicolors
endif

set t_Co=256

" -------------------------------------
"   Theme
" -------------------------------------

set background=dark
color grb256

" -------------------------------------
"   Custom Color Adjustments
" -------------------------------------

hi! Normal guibg=NONE ctermbg=NONE
hi! LineNR guibg=NONE ctermbg=NONE
hi! FoldColumn guibg=NONE ctermbg=NONE
hi! SignColumn guibg=NONE ctermbg=NONE
hi! VertSplit ctermfg=234 ctermbg=234
hi! htmlArg gui=italic cterm=italic
hi! Comment gui=italic cterm=italic
hi! LineNr ctermfg=236
