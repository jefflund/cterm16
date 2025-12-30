# cterm16

Inspired by (or rather, straight-up copied from) the excellent
[base16](https://github.com/chriskempson/base16-vim) framework, this Vim plugin
makes it easy to create decent looking Vim colorschemes using a palette of 16
xterm-256color codes. To create a cterm16 colorscheme, set the value of the 16
color variables, and then call CTerm16Apply with your colorscheme name. For
example, the cterm16-default colorscheme is defined using:
```
let g:ct16_0 = 234 " default background
let g:ct16_1 = 235 " light background (status bar)
let g:ct16_2 = 237 " selection background
let g:ct16_3 = 240 " comments, invisibles
let g:ct16_4 = 250 " dark foreground (status bar)
let g:ct16_5 = 188 " default foreground
let g:ct16_6 = 254 " rare foreground
let g:ct16_7 = 231 " rare background
let g:ct16_8 = 131 " variables
let g:ct16_9 = 173 " literals
let g:ct16_A = 222 " classes
let g:ct16_B = 143 " strings
let g:ct16_C = 109 " escapes
let g:ct16_D = 108 " functions
let g:ct16_E = 139 " keywords
let g:ct16_F = 131 " delimiters
call CTerm16Apply("default")
```

If you'd like to customize how the color palette is applied, you can add
something like this to your vimrc:
```
augroup custom_colorscheme
    autocmd!
    autocmd ColorScheme * call CTerm16Highlight("MatchParen", "", g:ct16_5, "")
```

In case you're wondering why you'd use this instead of base16 itself, here are
the differences:
* Only sets cterm attributes. Doesn't bother with gui attributes.
* Uses xterm-256color codes. Doesn't override your shell's system colors.
* Just a Vim colorscheme. Doesn't do anything else.
