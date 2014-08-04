" ====================================================
"   Vundle
" ====================================================

" Required by Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle manages Vundle (required)
Bundle 'gmarik/vundle'

" ========== Bundles ========== "

" Close matching parenthesis, quote, etc.
Bundle 'AutoClose'

" Better, visual navigation
Bundle 'Lokaltog/vim-easymotion'

" Solarized
Bundle 'altercation/vim-colors-solarized'

" Status bar
Bundle 'bling/vim-airline'

" Search word under cursor
Bundle 'bronson/vim-visual-star-search'

" Perform all your vim insert mode completions with Tab
Bundle 'ervandew/supertab'

" Text filtering and alignment
Bundle 'godlygeek/tabular'

" Just like 'f', but for two characters
Bundle 'goldfeld/vim-seek'

" Nice inteface for dealing with Git branches
Bundle 'idanarye/vim-merginal'

" Distraction-free writing
Bundle 'junegunn/goyo.vim'

" CoffeeScript language support
Bundle 'kchmck/vim-coffee-script'

" Fuzzy file finder
Bundle 'kien/ctrlp.vim'

" Expanding abbreviations
Bundle 'mattn/emmet-vim'

" GitHub Gist (and dependencies)
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'

" Better than Grep
Bundle 'mileszs/ack.vim'

" Indentation guides
Bundle 'nathanaelkane/vim-indent-guides'

" Populate the argument list from the files in the quickfix list
Bundle 'nelstrom/vim-qargs'

" Easier commenting
Bundle 'scrooloose/nerdcommenter'

" Syntax checker
Bundle 'scrooloose/syntastic'

" Select, and act on, multiple words at once
Bundle 'terryma/vim-multiple-cursors'

" Tim Pope Plugins (he deserves his own section)
" Easily search for, substitute, and abbreviate multiple variants of a word
Bundle 'tpope/vim-abolish'

" Asynchronous build and test dispatcher
Bundle 'tpope/vim-dispatch'

" Git wrapper
Bundle 'tpope/vim-fugitive'

" Vim Git runtime files
Bundle 'tpope/vim-git'

" Vim runtime files for Haml, Sass, and SCSS
Bundle 'tpope/vim-haml'

" Vim Markdown runtime files
Bundle 'tpope/vim-markdown'

" Ruby on Rails power tools
Bundle 'tpope/vim-rails'

" Enable repeating supported plugin maps with '.'
Bundle 'tpope/vim-repeat'

" Quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

" Enhance netrw, the built-in directory browser
Bundle 'tpope/vim-vinegar'

" Requires Python (ships with Homebrew Vim)
Bundle 'SirVer/ultisnips'

" Required by vundle
filetype indent plugin on
