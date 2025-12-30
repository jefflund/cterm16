if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 234 " default background
let g:ct16_1 = 237 " light background (status bar)
let g:ct16_2 = 59  " selection background
let g:ct16_3 = 243 " comments, invisibles
let g:ct16_4 = 249 " dark foreground (status bar)
let g:ct16_5 = 252 " default foreground
let g:ct16_6 = 254 " rare foreground
let g:ct16_7 = 255 " rare background
let g:ct16_8 = 180 " variables
let g:ct16_9 = 187 " literals
let g:ct16_A = 151 " classes
let g:ct16_B = 108 " strings
let g:ct16_C = 110 " escapes
let g:ct16_D = 140 " functions
let g:ct16_E = 139 " keywords
let g:ct16_F = 138 " delimiters
call CTerm16Apply("ashes")
