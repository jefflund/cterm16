if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 235 " primary background
let g:ct16_1 = 236 " secondary background (status bars, line number, fold marks)
let g:ct16_2 = 237 " selection background
let g:ct16_3 = 60 " comments, invisibles, line highlights
let g:ct16_4 = 244 " secondary foreground (status bars)
let g:ct16_5 = 254 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 141 " tertiary foreground (rarely used)
let g:ct16_7 = 238 " tertiary background (rarely used)
let g:ct16_8 = 197 " variables, markup lists, diff deleted
let g:ct16_9 = 171 " integers, booleans, constants
let g:ct16_A = 117 " classes, markup bold, search background
let g:ct16_B = 229 " strings, inherited class, diff inserted
let g:ct16_C = 81 " support, regex, escape characters, markup quotes
let g:ct16_D = 147 " functions, methods, headings
let g:ct16_E = 135 " keywords, selector, markup italic, diff changed
let g:ct16_F = 215 " deprecated, embedding language tags
call CTerm16Apply("carmilla")
