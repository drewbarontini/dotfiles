" ====================================================
"   Vundle
" ====================================================

" Required by Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages Vundle (required)
Plugin 'gmarik/Vundle.vim'

" ========== Plugins ========== "

" Close matching parenthesis, quote, etc.
Plugin 'AutoClose'

" Better, visual navigation
Plugin 'Lokaltog/vim-easymotion'

" Solarized
Plugin 'altercation/vim-colors-solarized'

" Status bar
Plugin 'bling/vim-airline'

" Search word under cursor
Plugin 'bronson/vim-visual-star-search'

" EnhancedDiff for better diffs
Plugin 'chrisbra/vim-diff-enhanced'

" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" Just like 'f', but for two characters
Plugin 'goldfeld/vim-seek'

" Nice inteface for dealing with Git branches
Plugin 'idanarye/vim-merginal'

" Break down your code into partials
Plugin 'jbgutierrez/vim-partial'

" Distraction-free writing
Plugin 'junegunn/goyo.vim'

" CoffeeScript language support
Plugin 'kchmck/vim-coffee-script'

" Fuzzy file finder
Plugin 'kien/ctrlp.vim'

" Expanding abbreviations
Plugin 'mattn/emmet-vim'

" GitHub Gist (and dependencies)
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'

" Better than Grep
Plugin 'mileszs/ack.vim'

" Indentation guides
Plugin 'nathanaelkane/vim-indent-guides'

" Populate the argument list from the files in the quickfix list
Plugin 'nelstrom/vim-qargs'

" Easier commenting
Plugin 'scrooloose/nerdcommenter'

" Syntax checker
Plugin 'scrooloose/syntastic'

" Select, and act on, multiple words at once
Plugin 'terryma/vim-multiple-cursors'

" Tim Pope Plugins (he deserves his own section)
" Easily search for, substitute, and abbreviate multiple variants of a word
Plugin 'tpope/vim-abolish'

" Asynchronous build and test dispatcher
Plugin 'tpope/vim-dispatch'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Vim Git runtime files
Plugin 'tpope/vim-git'

" Vim runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-haml'

" Vim Markdown runtime files
Plugin 'tpope/vim-markdown'

" Ruby on Rails power tools
Plugin 'tpope/vim-rails'

" Enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-repeat'

" Quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

" Enhance netrw, the built-in directory browser
Plugin 'tpope/vim-vinegar'

" Requires Python (ships with Homebrew Vim)
Plugin 'SirVer/ultisnips'

" Simple TODO lists
Plugin 'vitalk/vim-simple-todo'

" Adds a 'gs' sort
Plugin 'christoomey/vim-sort-motion'

" Required by vundle
call vundle#end()
filetype indent plugin on
