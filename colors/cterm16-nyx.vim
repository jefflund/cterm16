if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 232 " primary background
let g:ct16_1 = 233 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 234 " selection background
let g:ct16_3 = 180 " comments, invisibles, line highlights
let g:ct16_4 = 236 " secondary foreground (status bars)
let g:ct16_5 = 223 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 179 " tertiary foreground (rarely used)
let g:ct16_7 = 237 " tertiary background (rarely used)
let g:ct16_8 = 95  " variables, markup lists, diff deleted
let g:ct16_9 = 223 " integers, booleans, constants
let g:ct16_A = 222 " classes, markup bold, search background
let g:ct16_B = 144 " strings, inherited class, diff inserted
let g:ct16_C = 228 " support, regex, escape characters, markup quotes
let g:ct16_D = 94  " functions, methods, headings
let g:ct16_E = 96  " keywords, selector, markup italic, diff changed
let g:ct16_F = 240 " deprecated, embedding language tags
call CTerm16Apply("nyx")
