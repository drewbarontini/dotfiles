" vim/colors/test.vim: a new colorscheme by cehoffman
" Written By: Charles E. Campbell, Jr.'s ftplugin/hicolors.vim
" Date: Wed Aug  4 17:52:34 2010

" ---------------------------------------------------------------------
" Standard Initialization:
set bg=dark
hi clear
if exists( "syntax_on")
 syntax reset
endif
let colors_name = 'plasticcodewrap'

" ---------------------------------------------------------------------
" Highlighting Commands:
hi SpecialKey                   cterm=NONE           ctermfg=59   ctermbg=NONE gui=NONE                  guifg=#485056 guibg=#081015
hi NonText                      cterm=NONE           ctermfg=238  ctermbg=NONE gui=NONE                  guifg=#485056 guibg=NONE
hi Directory                    cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
hi ErrorMsg                     cterm=reverse        ctermfg=1    ctermbg=NONE gui=reverse               guifg=#d70000 guibg=NONE
hi IncSearch                    cterm=bold           ctermfg=39   ctermbg=NONE gui=bold                  guifg=#00c2ff guibg=NONE
hi Search                       cterm=bold           ctermfg=39   ctermbg=NONE gui=bold,italic           guifg=#00c2ff guibg=NONE
hi MoreMsg                      cterm=NONE           ctermfg=29   ctermbg=NONE gui=NONE                  guifg=#2e8b57 guibg=NONE
hi ModeMsg                      cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
hi LineNr                       cterm=NONE           ctermfg=238  ctermbg=NONE gui=NONE                  guifg=#4e4e4e guibg=NONE
hi Question                     cterm=NONE           ctermfg=39   ctermbg=NONE gui=NONE                  guifg=#00ff00 guibg=NONE
hi StatusLine                   cterm=NONE           ctermfg=230  ctermbg=236  gui=NONE                  guifg=#303030 guibg=#ffffd7
hi StatusLineNC                 cterm=NONE           ctermfg=181  ctermbg=236  gui=NONE                  guifg=#303030 guibg=#d7afaf
hi VertSplit                    cterm=NONE           ctermfg=NONE ctermbg=0    gui=NONE                  guifg=#303030 guibg=#303030
hi Title                        cterm=bold           ctermfg=251  ctermbg=NONE gui=bold                  guifg=#f8f8f8 guibg=NONE
hi Visual                       cterm=NONE           ctermfg=NONE ctermbg=0    gui=NONE                  guifg=NONE    guibg=#262626
hi link Visual VisualNOS
" hi VisualNOS                    cterm=NONE           ctermfg=251  ctermbg=NONE gui=bold,underline        guifg=NONE    guibg=NONE
hi WarningMsg                   cterm=NONE           ctermfg=124  ctermbg=232  gui=NONE                  guifg=#f8f8f8 guibg=#a32411
hi WildMenu                     cterm=NONE           ctermfg=16   ctermbg=226  gui=NONE                  guifg=#000000 guibg=#ffff00
hi Folded                       cterm=NONE           ctermfg=238  ctermbg=NONE gui=NONE                  guifg=#4e4e4e guibg=#0b161d
hi FoldColumn                   cterm=NONE           ctermfg=238  ctermbg=NONE gui=NONE                  guifg=#4e4e4e guibg=#0b161d
hi DiffAdd                      cterm=NONE           ctermfg=251  ctermbg=22   gui=NONE                  guifg=NONE    guibg=#004400
hi DiffChange                   cterm=NONE           ctermfg=251  ctermbg=130  gui=NONE                  guifg=#0b161d    guibg=#d8dc42
hi DiffDelete                   cterm=NONE           ctermfg=254  ctermbg=88   gui=NONE                  guifg=NONE    guibg=#660000
hi DiffText                     cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=#660000
hi svnDiffAdd                   cterm=NONE           ctermfg=22   ctermbg=22   gui=NONE                  guifg=#004400 guibg=#004400
hi svnDiffChange                cterm=NONE           ctermfg=184  ctermbg=184  gui=NONE                  guifg=#d8dc42 guibg=#d8dc42
hi svnDiffDelete                cterm=NONE           ctermfg=88   ctermbg=88   gui=NONE                  guifg=#660000 guibg=#660000
hi diffAdded                    cterm=NONE           ctermfg=40   ctermbg=NONE gui=NONE                  guifg=#00cc00 guibg=NONE
hi diffRemoved                  cterm=NONE           ctermfg=196  ctermbg=NONE gui=NONE                  guifg=#ee0000 guibg=NONE
hi diffNewFile                  cterm=NONE           ctermfg=240  ctermbg=NONE gui=NONE                  guifg=#ee0000 guibg=NONE
hi diffFile                     cterm=NONE           ctermfg=240  ctermbg=NONE gui=NONE                  guifg=#00cc00 guibg=NONE
hi diffLine                     cterm=NONE           ctermfg=240  ctermbg=NONE gui=NONE                  guifg=#585858 guibg=NONE
hi Conceal                      cterm=NONE           ctermfg=3    ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=#0b161d
hi CSVColumnEven                cterm=none           ctermfg=251  ctermbg=NONE gui=none                  guifg=#c6c6c6 guibg=#0b161d
hi CSVColumnHeaderEven          cterm=underline,bold ctermfg=3    ctermbg=NONE gui=underline,bold        guifg=#c98600 guibg=#0b161d
hi CSVColumnOdd                 cterm=none           ctermfg=251  ctermbg=NONE gui=none                  guifg=#c6c6c6 guibg=#0b161d
hi CSVColumnHeaderOdd           cterm=underline,bold ctermfg=3    ctermbg=NONE gui=underline,bold        guifg=#c98600 guibg=#0b161d
hi CSVHiColumn                  cterm=none           ctermfg=184  ctermbg=NONE gui=none                  guifg=#ffd700 guibg=#0b161d
hi CSVHiColumnHeader            cterm=underline,bold ctermfg=3    ctermbg=NONE gui=underline,bold        guifg=#c98600 guibg=#0b161d
hi SpellBad                     cterm=undercurl      ctermfg=196  ctermbg=NONE gui=undercurl             guifg=NONE    guibg=NONE
hi SpellCap                     cterm=undercurl      ctermfg=21   ctermbg=NONE gui=undercurl             guifg=NONE    guibg=NONE
hi SpellRare                    cterm=undercurl      ctermfg=201  ctermbg=NONE gui=undercurl             guifg=NONE    guibg=NONE
hi SpellLocal                   cterm=undercurl      ctermfg=51   ctermbg=NONE gui=undercurl             guifg=NONE    guibg=NONE
hi Pmenu                        cterm=NONE           ctermfg=236  ctermbg=230  gui=NONE                  guifg=#ddd800 guibg=#0b161d
hi PmenuSel                     cterm=bold           ctermfg=251  ctermbg=66   gui=bold                  guifg=#ddd800 guibg=#2b5670
hi PmenuSbar                    cterm=NONE           ctermfg=241  ctermbg=158  gui=NONE                  guifg=NONE    guibg=#666666
hi PmenuThumb                   cterm=reverse        ctermfg=251  ctermbg=NONE gui=reverse               guifg=NONE    guibg=NONE
hi TabLine                      cterm=NONE           ctermfg=10   ctermbg=0    gui=NONE                  guifg=#585858 guibg=#262626
hi TabLineSel                   cterm=bold           ctermfg=0    ctermbg=4    gui=bold                  guifg=#262626 guibg=#0087ff
hi TabLineFill                  cterm=NONE           ctermfg=3    ctermbg=0    gui=NONE                  guifg=#af8700 guibg=#262626
hi SignColumn                   cterm=NONE           ctermfg=238  ctermbg=NONE gui=NONE                  guifg=#4e4e4e guibg=NONE
hi ColorColumn                  cterm=NONE           ctermfg=NONE ctermbg=0    gui=NONE                  guifg=NONE    guibg=#0f0f0f
hi CursorColumn                 cterm=NONE           ctermfg=NONE ctermbg=0    gui=NONE                  guifg=NONE    guibg=#081015
hi CursorLine                   cterm=NONE           ctermfg=NONE ctermbg=0    gui=NONE                  guifg=NONE    guibg=#1c1c1c
hi Cursor                       cterm=NONE           ctermfg=251  ctermbg=109  gui=NONE                  guifg=NONE    guibg=#8ba7a7
hi lCursor                      cterm=NONE           ctermfg=16   ctermbg=251  gui=NONE                  guifg=#0b161d guibg=#f8f8f8
hi MatchParen                   cterm=NONE           ctermfg=0    ctermbg=4    gui=bold                  guifg=#e0e0e0 guibg=NONE
hi Comment                      cterm=NONE           ctermfg=241  ctermbg=NONE gui=italic                guifg=#82878b guibg=NONE
hi Constant                     cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
hi Special                      cterm=NONE           ctermfg=161  ctermbg=NONE gui=NONE                  guifg=#d7005f guibg=NONE
hi Identifier                   cterm=NONE           ctermfg=84   ctermbg=NONE gui=NONE                  guifg=#f6f080 guibg=NONE
hi Statement                    cterm=NONE           ctermfg=3    ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
hi PreProc                      cterm=NONE           ctermfg=3    ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
hi Type                         cterm=NONE           ctermfg=184  ctermbg=NONE gui=NONE                  guifg=#ddd800 guibg=NONE
hi Underlined                   cterm=underline      ctermfg=251  ctermbg=NONE gui=underline             guifg=NONE    guibg=#1c1c1c
hi Ignore                       cterm=NONE           ctermfg=16   ctermbg=NONE gui=NONE                  guifg=#0b161d guibg=NONE
hi Error                        cterm=bold           ctermfg=1    ctermbg=NONE gui=bold                  guifg=#d70000 guibg=NONE
hi Todo                         cterm=bold           ctermfg=32   ctermbg=NONE gui=bold,italic           guifg=#1e9ae0 guibg=NONE
hi String                       cterm=NONE           ctermfg=77   ctermbg=NONE gui=NONE                  guifg=#55e439 guibg=NONE
hi Character                    cterm=NONE           ctermfg=77   ctermbg=NONE gui=NONE                  guifg=#55e439 guibg=NONE
hi Number                       cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
" hi Boolean                      cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
" hi Float                        cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
hi Function                     cterm=bold           ctermfg=184  ctermbg=NONE gui=bold                  guifg=#ddd800 guibg=NONE
hi Conditional                  cterm=NONE           ctermfg=3  ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
" hi Label                        cterm=NONE           ctermfg=77   ctermbg=NONE gui=NONE                  guifg=#55e439 guibg=NONE
hi Operator                     cterm=bold           ctermfg=3  ctermbg=NONE gui=bold                  guifg=#c98600 guibg=NONE
" hi Keyword                      cterm=NONE           ctermfg=3  ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
" hi Define                       cterm=NONE           ctermfg=3  ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
" hi StorageClass                 cterm=NONE           ctermfg=228  ctermbg=NONE gui=NONE                  guifg=#f6f080 guibg=NONE
hi Tag                          cterm=bold           ctermfg=184  ctermbg=NONE gui=bold                  guifg=#ddd800 guibg=NONE
hi Normal                       cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=#c6c6c6 guibg=#0b161d
hi rubyRegexp                   cterm=NONE           ctermfg=215  ctermbg=NONE gui=NONE                  guifg=#ffb454 guibg=NONE
hi rubyRegexpDelimiter          cterm=NONE           ctermfg=215  ctermbg=NONE gui=NONE                  guifg=#ffb454 guibg=NONE
hi rubyControl                  cterm=bold           ctermfg=3  ctermbg=NONE gui=bold                  guifg=#c98600 guibg=NONE
" hi rubyCurlyBlock               cterm=bold           ctermfg=7    ctermbg=NONE gui=bold                  guifg=#e0e0e0 guibg=NONE
" hi rubyLocalVariableOrMethod    cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=#c6c6c6 guibg=NONE
hi rubyBlockParameterList       cterm=bold           ctermfg=7    ctermbg=NONE gui=bold                  guifg=#e0e0e0 guibg=NONE
hi rubyException                cterm=bold           ctermfg=3  ctermbg=NONE gui=bold                  guifg=#c98600 guibg=NONE
hi rubyClass                    cterm=NONE           ctermfg=3  ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
hi rubyPseudoVariable           cterm=NONE           ctermfg=209  ctermbg=NONE gui=NONE                  guifg=#fb9a4b guibg=NONE
" hi rubyOperator                 cterm=bold           ctermfg=3  ctermbg=NONE gui=bold                  guifg=#c98600 guibg=NONE
hi rubyOperator                 cterm=bold           ctermfg=7    ctermbg=NONE gui=bold                  guifg=#e0e0e0 guibg=NONE
hi rubyConstant                 cterm=NONE           ctermfg=157  ctermbg=NONE gui=NONE                  guifg=#9df39f guibg=NONE
hi rubyInstanceVariable         cterm=NONE           ctermfg=45   ctermbg=NONE gui=NONE                  guifg=#00bfff guibg=NONE
hi rubyClassVariable            cterm=NONE           ctermfg=209  ctermbg=NONE gui=NONE                  guifg=#fb9a4b guibg=NONE
hi rubySymbol                   cterm=NONE           ctermfg=169  ctermbg=NONE gui=NONE                  guifg=#de65a8 guibg=NONE
" hi rubyEscape                   cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
hi rubyInterpolationDelimiter   cterm=NONE           ctermfg=157  ctermbg=NONE gui=NONE                  guifg=#9df39f guibg=NONE
hi rubyInterpolation            cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
hi rubyFunction                 cterm=bold           ctermfg=184  ctermbg=NONE gui=bold                  guifg=#ddd800 guibg=NONE
hi rubyStringDelimiter          cterm=NONE           ctermfg=77   ctermbg=NONE gui=NONE                  guifg=#55e439 guibg=NONE
hi rubyBlockParameter           cterm=NONE           ctermfg=209  ctermbg=NONE gui=NONE                  guifg=#fb9a4b guibg=NONE
hi rubyInclude                  cterm=NONE           ctermfg=3  ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
hi rubyGlobalVariable           cterm=NONE           ctermfg=209  ctermbg=NONE gui=NONE                  guifg=#fb9a4b guibg=NONE
hi rubyTestMethod               cterm=NONE           ctermfg=160  ctermbg=NONE gui=NONE                  guifg=#d40c00 guibg=NONE
" hi erubyDelimiter               cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi erubyComment                 cterm=italic         ctermfg=32   ctermbg=NONE gui=italic                guifg=#1e9ae0 guibg=NONE
hi rubyRailsMethod              cterm=NONE           ctermfg=160  ctermbg=NONE gui=NONE                  guifg=#d40c00 guibg=NONE
" hi rubyRailsUserClass           cterm=NONE           ctermfg=157  ctermbg=NONE gui=NONE                  guifg=#9df39f guibg=NONE
" hi rubyRailsRenderMethod        cterm=NONE           ctermfg=160  ctermbg=NONE gui=NONE                  guifg=#d40c00 guibg=NONE
" hi rubyRailsARAssociationMethod cterm=NONE           ctermfg=160  ctermbg=NONE gui=NONE                  guifg=#d40c00 guibg=NONE
" hi rubyRailsARMethod            cterm=NONE           ctermfg=160  ctermbg=NONE gui=NONE                  guifg=#d40c00 guibg=NONE
hi erubyRailsMethod             cterm=NONE           ctermfg=160  ctermbg=NONE gui=NONE                  guifg=#d40c00 guibg=NONE
" hi netrwTreeBarSpace            cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwSlash                   cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwCopyTgt                 cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwPlain                   cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwSpecial                 cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwTime                    cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwSizeDate                cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwQuickHelp               cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwSortBy                  cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwSortSeq                 cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi netrwCmdNote                 cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
hi htmlTag                      cterm=NONE           ctermfg=159  ctermbg=NONE gui=NONE                  guifg=#9effff guibg=NONE
hi htmlEndTag                   cterm=NONE           ctermfg=159  ctermbg=NONE gui=NONE                  guifg=#9effff guibg=NONE
hi htmlTagName                  cterm=NONE           ctermfg=159  ctermbg=NONE gui=NONE                  guifg=#9effff guibg=NONE
hi htmlArg                      cterm=NONE           ctermfg=159  ctermbg=NONE gui=NONE                  guifg=#9effff guibg=NONE
hi htmlSpecialChar              cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
hi htmlItalic                   cterm=italic         ctermfg=NONE ctermbg=NONE gui=italic                guifg=NONE    guibg=NONE
hi htmlBold                     cterm=bold           ctermfg=NONE ctermbg=NONE gui=bold                  guifg=NONE    guibg=NONE
hi htmlBoldItalic               cterm=italic,bold    ctermfg=NONE ctermbg=NONE gui=italic,bold           guifg=NONE    guibg=NONE
" hi yamlKey                      cterm=bold           ctermfg=184  ctermbg=NONE gui=bold                  guifg=#ddd800 guibg=NONE
" hi yamlAnchor                   cterm=NONE           ctermfg=209  ctermbg=NONE gui=NONE                  guifg=#fb9a4b guibg=NONE
" hi yamlAlias                    cterm=NONE           ctermfg=209  ctermbg=NONE gui=NONE                  guifg=#fb9a4b guibg=NONE
" hi yamlDocumentHeader           cterm=NONE           ctermfg=77   ctermbg=NONE gui=NONE                  guifg=#55e439 guibg=NONE
" hi cssClassName                 cterm=bold           ctermfg=184  ctermbg=NONE gui=bold                  guifg=#ddd800 guibg=NONE
" hi cssBraces                    cterm=NONE           ctermfg=251  ctermbg=NONE gui=NONE                  guifg=NONE    guibg=NONE
" hi cssCommonAttr                cterm=NONE           ctermfg=174  ctermbg=NONE gui=NONE                  guifg=#eb939a guibg=NONE
" hi cssURL                       cterm=NONE           ctermfg=209  ctermbg=NONE gui=NONE                  guifg=#fb9a4b guibg=NONE
" hi cssFunctionName              cterm=NONE           ctermfg=160  ctermbg=NONE gui=NONE                  guifg=#d40c00 guibg=NONE
" hi cssColor                     cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
" hi cssPseudoClassId             cterm=bold           ctermfg=184  ctermbg=NONE gui=bold                  guifg=#ddd800 guibg=NONE
" hi cssValueLength               cterm=NONE           ctermfg=185  ctermbg=NONE gui=NONE                  guifg=#e4e46f guibg=NONE
" hi hi                           cterm=NONE           ctermfg=105  ctermbg=68   gui=NONE                  guifg=NONE    guibg=NONE
" hi gitconfig                    cterm=NONE           ctermfg=24   ctermbg=24   gui=NONE                  guifg=NONE    guibg=NONE
" hi vim                          cterm=NONE           ctermfg=NONE ctermbg=236  gui=NONE                  guifg=NONE    guibg=NONE
hi EasyMotionTarget             cterm=bold           ctermfg=3  ctermbg=NONE gui=NONE                  guifg=#c98600 guibg=NONE
hi EasyMotionShade              cterm=NONE           ctermfg=241  ctermbg=NONE gui=NONE                  guifg=#303030 guibg=NONE

" Raindow Parenthsis
hi level1c  ctermbg=NONE ctermfg=brown        guibg=NONE guifg=RoyalBlue3
hi level2c  ctermbg=NONE ctermfg=Darkblue     guibg=NONE guifg=SeaGreen3
hi level3c  ctermbg=NONE ctermfg=darkgray     guibg=NONE guifg=DarkOrchid3
hi level4c  ctermbg=NONE ctermfg=darkgreen    guibg=NONE guifg=firebrick3
hi level5c  ctermbg=NONE ctermfg=darkcyan     guibg=NONE guifg=RoyalBlue3
hi level6c  ctermbg=NONE ctermfg=darkred      guibg=NONE guifg=SeaGreen3
hi level7c  ctermbg=NONE ctermfg=darkmagenta  guibg=NONE guifg=DarkOrchid3
hi level8c  ctermbg=NONE ctermfg=brown        guibg=NONE guifg=firebrick3
hi level9c  ctermbg=NONE ctermfg=gray         guibg=NONE guifg=RoyalBlue3
hi level10c ctermbg=NONE ctermfg=black        guibg=NONE guifg=SeaGreen3
hi level11c ctermbg=NONE ctermfg=darkmagenta  guibg=NONE guifg=DarkOrchid3
hi level12c ctermbg=NONE ctermfg=Darkblue     guibg=NONE guifg=firebrick3
hi level13c ctermbg=NONE ctermfg=darkgreen    guibg=NONE guifg=RoyalBlue3
hi level14c ctermbg=NONE ctermfg=darkcyan     guibg=NONE guifg=SeaGreen3
hi level15c ctermbg=NONE ctermfg=darkred      guibg=NONE guifg=DarkOrchid3
hi level16c ctermbg=NONE ctermfg=red          guibg=NONE guifg=firebrick3

" ruby << RUBY
"   his = {:name => [], :term => [], :cterm => [], :ctermfg => [], :ctermbg => [], :gui => [], :guifg => [], :guibg => []}
"   maxes = {}
"   linenr = []
"   lines = VIM::Buffer.current.length.times.each do |x|
"     line = VIM::Buffer.current[x + 1]
"     if line =~ /^hi (?!clear)/
"       linenr << x + 1
"       line = line.split

"       his[:name] << line[1]
"       his[:term] << (line.detect { |l| l =~ /^term=/ } || '')
"       his[:cterm] << (line.detect { |l| l =~ /^cterm=/ } || '')
"       his[:ctermfg] << (line.detect { |l| l =~ /^ctermfg=/ } || '')
"       his[:ctermbg] << (line.detect { |l| l =~ /^ctermbg=/ } || '')
"       his[:gui] << (line.detect { |l| l =~ /^gui=/ } || '')
"       his[:guifg] << (line.detect { |l| l =~ /^guifg=/ } || '')
"       his[:guibg] << (line.detect { |l| l =~ /^guibg=/ } || '')
"     end
"   end

"   his.each do |k, v|
"     maxes[k] = his[k].map { |item| item.size }.max
"   end

"   his[:name].length.times do |x|
"     VIM::Buffer.current[linenr[x]] = ['hi', his[:name][x].ljust(maxes[:name]), his[:term][x].ljust(maxes[:term]), his[:cterm][x].ljust(maxes[:cterm]),
"     his[:ctermfg][x].ljust(maxes[:ctermfg]), his[:ctermbg][x].ljust(maxes[:ctermbg]), his[:gui][x].ljust(maxes[:gui]),
"     his[:guifg][x].ljust(maxes[:guifg]), his[:guibg][x].ljust(maxes[:guibg])].join(' ').strip
"   end
" RUBY

" vim: nowrap relativenumber
