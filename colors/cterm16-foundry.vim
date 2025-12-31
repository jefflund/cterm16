if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 235 " primary background
let g:ct16_1 = 238 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 241 " selection background
let g:ct16_3 = 244 " comments, invisibles, line highlights
let g:ct16_4 = 250 " secondary foreground (status bars)
let g:ct16_5 = 255 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 252 " tertiary foreground (rarely used)
let g:ct16_7 = 236 " tertiary background (rarely used)
let g:ct16_8 = 145 " variables, markup lists, diff deleted
let g:ct16_9 = 187 " integers, booleans, constants
let g:ct16_A = 151 " classes, markup bold, search background
let g:ct16_B = 116 " strings, inherited class, diff inserted
let g:ct16_C = 122 " support, regex, escape characters, markup quotes
let g:ct16_D = 117 " functions, methods, headings
let g:ct16_E = 110 " keywords, selector, markup italic, diff changed
let g:ct16_F = 109 " deprecated, embedding language tags
call CTerm16Apply("foundry")
