if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 236 " default background
let g:ct16_1 = 237 " light background (status bar)
let g:ct16_2 = 239 " selection background
let g:ct16_3 = 243 " comments, invisibles
let g:ct16_4 = 247 " dark foreground (status bar)
let g:ct16_5 = 252 " default foreground
let g:ct16_6 = 254 " rare foreground
let g:ct16_7 = 255 " rare background
let g:ct16_8 = 210 " variables
let g:ct16_9 = 208 " literals
let g:ct16_A = 222 " classes
let g:ct16_B = 151 " strings
let g:ct16_C = 116 " escapes
let g:ct16_D = 110 " functions
let g:ct16_E = 182 " keywords
let g:ct16_F = 173 " delimiters
call CTerm16Apply("eighties")
