# termbase16-vim

The Vim colorschemes from [base16](https://github.com/chriskempson/base16-vim)
are awesome, but in the terminal they require you to change your shell's
default ANSI colors, which affects not only Vim, but everything else! This
plugin instead only affects Vim, and uses ANSI 256 color codes instead of
manipulated shell defaults.

## Usage

Creating a colorscheme in termbase16-vim is quite simple - just call
`TermbaseColorscheme` with the name of your colorscheme along with 16 ANSI 256
color codes. For example, `termbase16-ashes` is created using the following:

```
call TermbaseColorscheme("termbase16-ashes", 234, 238, 59, 244, 249, 252, 254, 255, 180, 186, 150, 115, 110, 140, 175, 174)
```
