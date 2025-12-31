if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 233 " primary background
let g:ct16_1 = 235 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 237 " selection background
let g:ct16_3 = 240 " comments, invisibles, line highlights
let g:ct16_4 = 180 " secondary foreground (status bars)
let g:ct16_5 = 252 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 144 " tertiary foreground (rarely used)
let g:ct16_7 = 236 " tertiary background (rarely used)
let g:ct16_8 = 138 " variables, markup lists, diff deleted
let g:ct16_9 = 180 " integers, booleans, constants
let g:ct16_A = 144 " classes, markup bold, search background
let g:ct16_B = 108 " strings, inherited class, diff inserted
let g:ct16_C = 114 " support, regex, escape characters, markup quotes
let g:ct16_D = 101 " functions, methods, headings
let g:ct16_E = 96  " keywords, selector, markup italic, diff changed
let g:ct16_F = 95  " deprecated, embedding language tags
call CTerm16Apply("vintage")
