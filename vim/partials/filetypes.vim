" ====================================================
"   Filetypes
" ====================================================

autocmd BufNewFile,BufRead *.coffee.erb set filetype=coffee
autocmd BufNewFile,BufRead *.haml.erb set filetype=haml
autocmd BufNewFile,BufRead *.sass set ft=sass.css
autocmd BufNewFile,BufRead *.sass.erb set filetype=sass
autocmd BufNewFile,BufRead *.scss set ft=scss.css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype markdown setlocal textwidth=80 colorcolumn=80 linebreak nolist wrap nonumber norelativenumber
autocmd Filetype gitcommit setlocal spell textwidth=72
