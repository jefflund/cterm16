if !exists("g:loaded_cterm16")
    runtime! plugin/cterm16.vim
endif
let g:ct16_0 = 236 " default background
let g:ct16_1 = 237 " light background (status bar)
let g:ct16_2 = 239 " selection background
let g:ct16_3 = 242 " comments, invisibles
let g:ct16_4 = 247 " dark foreground (status bar)
let g:ct16_5 = 252 " default foreground
let g:ct16_6 = 254 " rare foreground
let g:ct16_7 = 255 " rare background
let g:ct16_8 = 210 " variables
let g:ct16_9 = 209 " literals
let g:ct16_A = 221 " classes
let g:ct16_B = 114 " strings
let g:ct16_C = 80  " escapes
let g:ct16_D = 68  " functions
let g:ct16_E = 176 " keywords
let g:ct16_F = 173 " delimiters
call CTerm16Apply("eighties")
