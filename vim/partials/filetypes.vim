" *************************************
"
"   Filetypes
"
" *************************************

" -------------------------------------
"   Buffers
" -------------------------------------

autocmd BufNewFile,BufRead *.coffee.erb set filetype=coffee
autocmd BufNewFile,BufRead *.haml.erb set filetype=haml
autocmd BufNewFile,BufRead *.sass set ft=sass.css
autocmd BufNewFile,BufRead *.sass.erb set filetype=sass
autocmd BufNewFile,BufRead *.scss set ft=scss.css
autocmd BufNewFile,BufRead *.js.es6 set ft=javascript

" -------------------------------------
"   Filetypes
" -------------------------------------

autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType markdown,md setlocal spell spelllang=en

" -------------------------------------
"   Pencil
" -------------------------------------

" augroup pencil
"   autocmd!
"   autocmd FileType markdown,md call pencil#init()
"   autocmd FileType text        call pencil#init()
" augroup END
