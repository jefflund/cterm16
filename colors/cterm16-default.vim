if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 234 " default background
let g:ct16_1 = 235 " light background (status bar)
let g:ct16_2 = 237 " selection background
let g:ct16_3 = 240 " comments, invisibles
let g:ct16_4 = 250 " dark foreground (status bar)
let g:ct16_5 = 188 " default foreground
let g:ct16_6 = 254 " rare foreground
let g:ct16_7 = 231 " rare background
let g:ct16_8 = 131 " variables
let g:ct16_9 = 173 " literals
let g:ct16_A = 222 " classes
let g:ct16_B = 143 " strings
let g:ct16_C = 109 " escapes
let g:ct16_D = 108 " functions
let g:ct16_E = 139 " keywords
let g:ct16_F = 131 " delimiters
call CTerm16Apply("default")
