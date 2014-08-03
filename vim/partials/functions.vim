" ====================================================
"   Functions
" ====================================================

" ========== Clear Search ========== "
" Clear the search buffer when hitting return

function! MapCR()
  nnoremap <leader>l :nohlsearch<cr>
endfunction
call MapCR()

" ========== Multi-purpose Tab Key ========== "
" Indent if we're at the beginning of a line. Else, do completion.

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

" ========== Rename File ========== "

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>rn :call RenameFile()<cr>

