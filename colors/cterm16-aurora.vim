if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 234 " primary background
let g:ct16_1 = 235 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 236 " selection background
let g:ct16_3 = 66  " comments, invisibles, line highlights
let g:ct16_4 = 240 " secondary foreground (status bars)
let g:ct16_5 = 158 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 23  " tertiary foreground (rarely used)
let g:ct16_7 = 24  " tertiary background (rarely used)
let g:ct16_8 = 95  " variables, markup lists, diff deleted
let g:ct16_9 = 25  " integers, booleans, constants
let g:ct16_A = 115 " classes, markup bold, search background
let g:ct16_B = 65  " strings, inherited class, diff inserted
let g:ct16_C = 108 " support, regex, escape characters, markup quotes
let g:ct16_D = 22  " functions, methods, headings
let g:ct16_E = 37  " keywords, selector, markup italic, diff changed
let g:ct16_F = 96  " deprecated, embedding language tags
call CTerm16Apply("aurora")
