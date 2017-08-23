" *************************************
"
"   Vundle
"   -> Plugin manager
"
" *************************************

" -------------------------------------
"   Base
" -------------------------------------

" Required by Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages Vundle (required)
Plugin 'gmarik/Vundle.vim'

" -------------------------------------
"   Plugins
" -------------------------------------

" Git status in the sidebar
" Plugin 'airblade/vim-gitgutter'

" Solarized
Plugin 'altercation/vim-colors-solarized'

" Close matching parenthesis, quote, etc.
Plugin 'AutoClose'

" Search word under cursor
Plugin 'bronson/vim-visual-star-search'

" Support React JSX
Plugin 'chemzqm/vim-jsx-improve'

" EnhancedDiff for better diffs
Plugin 'chrisbra/vim-diff-enhanced'

" Vim tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" Adds a 'gs' sort
Plugin 'christoomey/vim-sort-motion'

" Jade syntax highlighting
Plugin 'digitaltoad/vim-jade'

" tmux status line
Plugin 'edkolev/tmuxline.vim'

" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" Just like 'f', but for two characters
Plugin 'goldfeld/vim-seek'

" Nice inteface for dealing with Git branches
Plugin 'idanarye/vim-merginal'

" Distraction-free writing
" Plugin 'junegunn/goyo.vim'

" CoffeeScript language support
" Plugin 'kchmck/vim-coffee-script'

" Fuzzy file finder
Plugin 'kien/ctrlp.vim'

" Better, visual navigation
Plugin 'Lokaltog/vim-easymotion'

" Expanding abbreviations
Plugin 'mattn/emmet-vim'

" GitHub Gist (and dependencies)
" Plugin 'mattn/gist-vim'
" Plugin 'mattn/webapi-vim'

" Better than Grep
" Plugin 'mileszs/ack.vim'

" React JSX syntax highlighting/indenting
Plugin 'mxw/vim-jsx'

" Indentation guides
Plugin 'nathanaelkane/vim-indent-guides'

" Populate the argument list from the files in the quickfix list
" Plugin 'nelstrom/vim-qargs'

" Rethinking Vim as a tool for writing
" Plugin 'reedes/vim-pencil'

" Front for ag, A.K.A. the_silver_searcher
Plugin 'rking/ag.vim'

" Auto fix your javascript using eslint or fixmyjs or jscs
Plugin 'ruanyl/vim-fixmyjs'

" Prettier
Plugin 'sbdchd/neoformat'

" Syntax checker
" Plugin 'scrooloose/syntastic'

" Requires Python (ships with Homebrew Vim)
Plugin 'SirVer/ultisnips'

" Select, and act on, multiple words at once
Plugin 'terryma/vim-multiple-cursors'

" Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Asynchronous Lint Engine
Plugin 'w0rp/ale'

" -------------------------------------
"   tpope
" -------------------------------------

" Easily search for, substitute, and abbreviate multiple variants of a word
Plugin 'tpope/vim-abolish'

" Comment things out
Plugin 'tpope/vim-commentary'

" Asynchronous build and test dispatcher
" Plugin 'tpope/vim-dispatch'

" Helpers for UNIX
Plugin 'tpope/vim-eunuch'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Vim Git runtime files
Plugin 'tpope/vim-git'

" Vim runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-haml'

" Vim Markdown runtime files
Plugin 'tpope/vim-markdown'

" Ruby on Rails power tools
" Plugin 'tpope/vim-rails'

" Enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-repeat'

" GitHub extension for fugitive.vim
Plugin 'tpope/vim-rhubarb'

" Quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

" Pairs of handy bracket mappings
Plugin 'tpope/vim-unimpaired'

" Enhance netrw, the built-in directory browser
Plugin 'tpope/vim-vinegar'

" -------------------------------------
"   Close
" -------------------------------------

" Required by vundle
call vundle#end()
filetype indent plugin on
