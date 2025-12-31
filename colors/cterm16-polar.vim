if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 234 " primary background
let g:ct16_1 = 236 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 239 " selection background
let g:ct16_3 = 61  " comments, invisibles, line highlights
let g:ct16_4 = 159 " secondary foreground (status bars)
let g:ct16_5 = 255 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 117 " tertiary foreground (rarely used)
let g:ct16_7 = 24  " tertiary background (rarely used)
let g:ct16_8 = 81  " variables, markup lists, diff deleted
let g:ct16_9 = 153 " integers, booleans, constants
let g:ct16_A = 111 " classes, markup bold, search background
let g:ct16_B = 159 " strings, inherited class, diff inserted
let g:ct16_C = 75  " support, regex, escape characters, markup quotes
let g:ct16_D = 87  " functions, methods, headings
let g:ct16_E = 69  " keywords, selector, markup italic, diff changed
let g:ct16_F = 68  " deprecated, embedding language tags
call CTerm16Apply("polar")
