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
augroup END
```

In case you're wondering why you'd use this instead of base16 itself, here are
the differences:
* Only sets cterm attributes. Doesn't bother with gui attributes.
* Uses xterm-256color codes. Doesn't override your shell's system colors.
* Just a Vim colorscheme. Doesn't do anything else.

## Colorschemes

Who are we kidding? You don't care about the how, you just want to know if the
included colorschemes are any good. Judge for yourself:

### cterm16-aurora
![Example of cterm16-aurora colorscheme](/demo/aurora.png)

### cterm16-borealis
![Example of cterm16-borealis colorscheme](/demo/borealis.png)

### cterm16-carmilla
![Example of cterm16-carmilla colorscheme](/demo/carmilla.png)

### cterm16-foundry
![Example of cterm16-foundry colorscheme](/demo/foundry.png)

### cterm16-hacker
![Example of cterm16-hacker colorscheme](/demo/hacker.png)

### cterm16-latern
![Example of cterm16-latern colorscheme](/demo/lantern.png)

### cterm16-lucid
![Example of cterm16-lucid colorscheme](/demo/lucid.png)

### cterm16-magnum
![Example of cterm16-magnum colorscheme](/demo/magnum.png)

### cterm16-mint
![Example of cterm16-mint colorscheme](/demo/mint.png)

### cterm16-nyx
![Example of cterm16-nyx colorscheme](/demo/nyx.png)

### cterm16-polar
![Example of cterm16-polar colorscheme](/demo/polar.png)

### cterm16-snoke
![Example of cterm16-snoke colorscheme](/demo/smoke.png)

### cterm16-twilight
![Example of cterm16-twilight colorscheme](/demo/twilight.png)

### cterm16-vintage
![Example of cterm16-vintage colorscheme](/demo/vintage.png)

### cterm16-wintertide
![Example of cterm16-wintertide colorscheme](/demo/wintertide.png)
