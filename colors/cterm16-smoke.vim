if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 16  " primary background
let g:ct16_1 = 234 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 235 " selection background
let g:ct16_3 = 237 " comments, invisibles, line highlights
let g:ct16_4 = 238 " secondary foreground (status bars)
let g:ct16_5 = 248 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 240 " tertiary foreground (rarely used)
let g:ct16_7 = 241 " tertiary background (rarely used)
let g:ct16_8 = 242 " variables, markup lists, diff deleted
let g:ct16_9 = 244 " integers, booleans, constants
let g:ct16_A = 245 " classes, markup bold, search background
let g:ct16_B = 247 " strings, inherited class, diff inserted
let g:ct16_C = 231 " support, regex, escape characters, markup quotes
let g:ct16_D = 250 " functions, methods, headings
let g:ct16_E = 252 " keywords, selector, markup italic, diff changed
let g:ct16_F = 254 " deprecated, embedding language tags
call CTerm16Apply("smoke")
