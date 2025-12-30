# cterm16

Inspired by (or rather, straight-up copied from) the excellent
[base16](https://github.com/chriskempson/base16-vim) framework, this Vim plugin
makes it easy to create decent looking Vim colorschemes using a palette of 16
xterm-256color codes. To create a cterm16 colorscheme, set the value of the 16
color variables, and then call CTerm16Apply with your colorscheme name. For
example, the cterm16-lucid colorscheme is defined using:
```
let g:ct16_0 = 234 " primary background
let g:ct16_1 = 238 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 237 " selection background
let g:ct16_3 = 245 " comments, invisibles, line highlights
let g:ct16_4 = 254 " secondary foreground (status bars)
let g:ct16_5 = 253 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 254 " tertiary foreground (rarely used)
let g:ct16_7 = 234 " tertiary background (rarely used)
let g:ct16_8 = 167 " variables, markup lists, diff deleted
let g:ct16_9 = 116 " integers, booleans, constants
let g:ct16_A = 110 " classes, markup bold, search background
let g:ct16_B = 150 " strings, inherited class, diff inserted
let g:ct16_C = 181 " support, regex, escape characters, markup quotes
let g:ct16_D = 216 " functions, methods, headings
let g:ct16_E = 110 " keywords, selector, markup italic, diff changed
let g:ct16_F = 181 " deprecated, embedding language tags
call CTerm16Apply("lucid")
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
