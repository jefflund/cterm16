if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 234 " primary background
let g:ct16_1 = 232 " secondary background (darkest)
let g:ct16_2 = 236 " selection background
let g:ct16_3 = 241 " comments, invisibles, line highlights
let g:ct16_4 = 244 " secondary foreground
let g:ct16_5 = 250 " primary foreground (lightest)
let g:ct16_6 = 255 " tertiary foreground
let g:ct16_7 = 233 " tertiary background
let g:ct16_8 = 101 " variables
let g:ct16_9 = 102 " integers
let g:ct16_A = 103 " classes
let g:ct16_B = 65 " strings
let g:ct16_C = 66 " support
let g:ct16_D = 24 " functions
let g:ct16_E = 25 " keywords
let g:ct16_F = 59 " deprecated
call CTerm16Apply("wintertide")
