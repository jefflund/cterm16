if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 232 " primary background
let g:ct16_1 = 234 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 17  " selection background
let g:ct16_3 = 59  " comments, invisibles, line highlights
let g:ct16_4 = 95  " secondary foreground (status bars)
let g:ct16_5 = 253 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 135 " tertiary foreground (rarely used)
let g:ct16_7 = 235 " tertiary background (rarely used)
let g:ct16_8 = 167 " variables, markup lists, diff deleted
let g:ct16_9 = 176 " integers, booleans, constants
let g:ct16_A = 133 " classes, markup bold, search background
let g:ct16_B = 140 " strings, inherited class, diff inserted
let g:ct16_C = 104 " support, regex, escape characters, markup quotes
let g:ct16_D = 98  " functions, methods, headings
let g:ct16_E = 91  " keywords, selector, markup italic, diff changed
let g:ct16_F = 60  " deprecated, embedding language tags
call CTerm16Apply("twilight")
