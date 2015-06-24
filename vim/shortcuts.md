Vim Shortcuts
=============

You can see the implementation in [vim/partials/mappings.vim](https://github.com/drewbarontini/dotfiles/blob/master/vim/partials/mappings.vim) and [vim/partials/functions.vim](https://github.com/drewbarontini/dotfiles/blob/master/vim/partials/functions.vim).

General
-------

### Better Defaults

- `;` `:`
- `:` `;`
- `jk` `escape`

### Window sizing with arrow keys

- `up arrow`
- `down arrow`
- `left arrow`
- `right arrow`

### Window navigation

- `control+h` Move to the left window
- `control+l` Move to the right window
- `control+j` Move to the bottom window
- `control+k` Move to the top window

### Move visual block

- `J` Move visual block down
- `K` Move visual block up

### Tabs

- `control+t` New tab
- `H` Move to the previous tab
- `L` Move to the next tab

### Insert newlines

- `J` Insert newline above
- `K` Insert newline below

### Other

- `control+s` Save file
- `%%` Print out directory of current file (command mode)
- `control+e` Jump out of parenthesis, brackets, etc.
- `Y` Copy to the end of the line

Leader Keys
-----------

All of these, with the exception of the "Non-Alphanumeric", begin with the `<leader>` key, which is the `spacebar`.

### Non-Alphanumeric

- `,,` Switch between buffers
- `!` Start a shell command

### A

_Search with ag_

- `aa` Regular ag search
- `AA` Search for word under the cursor
- `ac` ag search (CoffeeScript files)
- `ah` ag search (Haml files)
- `as` ag search (Sass files)

### B

- `B` Run `bundle install`
- `b` Search through CtrlP buffer

### C

- `co` Copy whole file, store in register

### D

- `do` Delete all text in file

### E

- ...

### F

- `f` Standard CtrlP window
- `F` Clean CtrlP cache

### G

- `G` g command
- `gb` Run `:Gbrowse` command
- `gs` Sort block

### H

- `h` Horizontal split window

### I

- `I` Auto-indent entire file

### K

- `ka` Adds space to `('turtle')`
- `kr` Removes space from `( 'turtle' )`

### L

- `l` Clear the search buffer

### M

- ...

### N

- ...

### O

- `os` Open current file in Sublime Text

### P

- `p` Duplicate current line, paste after
- `P` Nice paste

### Q

- `q` Quit

### R

- `R` Open link on current line in browser
- `rc` Open `~/.vimrc`
- `rs` Replace current search with...
- `rm` Open Vim mappings file
- `rn` Rename file

### S

- `S` Trim trailing whitespace
- `sd` Open snippets
- `se` Edit currently scoped snippets

### T

- `T` Run `:Tabularize` command
- `T=` Run `:Tabularize` command on `=` delimeter
- `T:` Run `:Tabularize` command on `:` delimeter
- `t` Run RSpec test for current file

### U

- `ug` Run `:IndentGuidesToggle`

### V

- `v` Vertical split
- `V` Run `:Goyo`

### W

- `w` Save file
- `W` Save file and quit

### X

- ...

### Y

- `y` Copy line, paste before current line

### Z

- `z` Quicker action to suspend Vim (`fg` to return)
- `zh` Replace `H` which gets overridden for tabs
- `zm` Replace `M`
- `zl` Replace `L` which gets overridden for tabs
