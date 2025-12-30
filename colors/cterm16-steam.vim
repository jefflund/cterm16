if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 233 " default background
let g:ct16_1 = 235 " light background (status bar)
let g:ct16_2 = 236 " selection background
let g:ct16_3 = 237 " comments, invisibles
let g:ct16_4 = 239 " dark foreground (status bar)
let g:ct16_5 = 249 " default foreground
let g:ct16_6 = 254 " rare foreground
let g:ct16_7 = 255 " rare background
let g:ct16_8 = 101 " variables
let g:ct16_9 = 144 " literals
let g:ct16_A = 109 " classes
let g:ct16_B = 65  " strings
let g:ct16_C = 66  " escapes
let g:ct16_D = 60  " functions
let g:ct16_E = 58  " keywords
let g:ct16_F = 95  " delimiters
call CTerm16Apply("steam")
