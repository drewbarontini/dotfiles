" *************************************
"
"   Functions
"
" *************************************

" -------------------------------------
"   Browser
"   -> Open link on current line in browser
" -------------------------------------

function! Browser()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
    exec "!open \"" . s:uri . "\""
  else
    echo "No URI found in line."
  endif
endfunction
nnoremap <leader>R :call Browser()<cr>

" -------------------------------------
"   Clean File
" -------------------------------------

function! CleanFile()
  exec ':%s/\n\n\n/\r\r/ge'
endfunction

" -------------------------------------
"   Multi-purpose Tab Key
"   -> Indent if we're at the beginning of a line. Else, do completion.
" -------------------------------------

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" -------------------------------------
"   Long Line Toggle
"   -> Toggle relative line numbers and cursorline; useful for long line files
" -------------------------------------

function! LongLineToggle()
  set relativenumber!
  set cursorline!
endfunction
nnoremap <leader>ot :call LongLineToggle()<cr>

" -------------------------------------
"   Rename File
" -------------------------------------

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
nnoremap <leader>rn :call RenameFile()<cr>
