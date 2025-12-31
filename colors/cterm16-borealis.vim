if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 16  " primary background
let g:ct16_1 = 232 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 234 " selection background
let g:ct16_3 = 59  " comments, invisibles, line highlights
let g:ct16_4 = 99  " secondary foreground (status bars)
let g:ct16_5 = 189 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 141 " tertiary foreground (rarely used)
let g:ct16_7 = 17  " tertiary background (rarely used)
let g:ct16_8 = 207 " variables, markup lists, diff deleted
let g:ct16_9 = 171 " integers, booleans, constants
let g:ct16_A = 135 " classes, markup bold, search background
let g:ct16_B = 105 " strings, inherited class, diff inserted
let g:ct16_C = 111 " support, regex, escape characters, markup quotes
let g:ct16_D = 69  " functions, methods, headings
let g:ct16_E = 93  " keywords, selector, markup italic, diff changed
let g:ct16_F = 95  " deprecated, embedding language tags
call CTerm16Apply("borealis")
