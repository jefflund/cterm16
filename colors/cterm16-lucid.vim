if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
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
