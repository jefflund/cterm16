if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 233 " primary background
let g:ct16_1 = 109 " secondary background (status bars, line number, fold marks) (original 111)
let g:ct16_2 = 239 " selection background
let g:ct16_3 = 153 " comments, invisibles, line highlights
let g:ct16_4 = 255 " secondary foreground (status bars)
let g:ct16_5 = 231 " primary foreground, caret, delimiters, operators
let g:ct16_6 = 189 " tertiary foreground (rarely used)
let g:ct16_7 = 25  " tertiary background (rarely used)
let g:ct16_8 = 159 " variables, markup lists, diff deleted
let g:ct16_9 = 153 " integers, booleans, constants
let g:ct16_A = 117 " classes, markup bold, search background
let g:ct16_B = 123 " strings, inherited class, diff inserted
let g:ct16_C = 81  " support, regex, escape characters, markup quotes
let g:ct16_D = 123 " functions, methods, headings
let g:ct16_E = 69  " keywords, selector, markup italic, diff changed
let g:ct16_F = 75  " deprecated, embedding language tags
call CTerm16Apply("magnum")
