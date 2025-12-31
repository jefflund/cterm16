if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 235 " primary background
let g:ct16_1 = 30  " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 237 " selection background
let g:ct16_3 = 78  " comments, invisibles, line highlights
let g:ct16_4 = 121 " secondary foreground (status bars)
let g:ct16_5 = 255 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 158 " tertiary foreground (rarely used)
let g:ct16_7 = 29  " tertiary background (rarely used)
let g:ct16_8 = 85  " variables, markup lists, diff deleted
let g:ct16_9 = 122 " integers, booleans, constants
let g:ct16_A = 121 " classes, markup bold, search background
let g:ct16_B = 84  " strings, inherited class, diff inserted
let g:ct16_C = 83  " support, regex, escape characters, markup quotes
let g:ct16_D = 48  " functions, methods, headings
let g:ct16_E = 49  " keywords, selector, markup italic, diff changed
let g:ct16_F = 43  " deprecated, embedding language tags
call CTerm16Apply("mint")
