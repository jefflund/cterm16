if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 235 " primary background
let g:ct16_1 = 237 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 94  " selection background
let g:ct16_3 = 130 " comments, invisibles, line highlights
let g:ct16_4 = 248 " secondary foreground (status bars)
let g:ct16_5 = 229 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 186 " tertiary foreground (rarely used)
let g:ct16_7 = 52  " tertiary background (rarely used)
let g:ct16_8 = 167 " variables, markup lists, diff deleted
let g:ct16_9 = 214 " integers, booleans, constants
let g:ct16_A = 180 " classes, markup bold, search background
let g:ct16_B = 137 " strings, inherited class, diff inserted
let g:ct16_C = 142 " support, regex, escape characters, markup quotes
let g:ct16_D = 172 " functions, methods, headings
let g:ct16_E = 166 " keywords, selector, markup italic, diff changed
let g:ct16_F = 95  " deprecated, embedding language tags
call CTerm16Apply("lantern")
