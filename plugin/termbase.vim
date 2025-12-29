if exists("g:loaded_termbase")
    finish
endif
let g:loaded_termbase = 1

let g:tb16_0 = 0  " default background
let g:tb16_1 = 10 " light background (status bar)
let g:tb16_2 = 11 " selection background
let g:tb16_3 = 8  " comments, invisibles
let g:tb16_4 = 12 " dark foreground (status bar)
let g:tb16_5 = 7  " default foreground
let g:tb16_6 = 13 " rare foreground
let g:tb16_7 = 15 " rare background
let g:tb16_8 = 1  " variables
let g:tb16_9 = 9  " literals
let g:tb16_A = 3  " classes
let g:tb16_B = 2  " strings
let g:tb16_C = 6  " escapes
let g:tb16_D = 4  " functions
let g:tb16_E = 5  " keywords
let g:tb16_F = 14 " delimiters

function! TermbaseCycleNext()
    let l:colors = getcompletion('', 'color')
    let l:idx = index(l:colors, g:colors_name) + 1
    exe 'colorscheme ' .. l:colors[l:idx < len(l:colors) ? l:idx : 0]
endfunction

function! TermbaseCyclePrev()
    let l:colors = getcompletion('', 'color')
    let l:idx = index(l:colors, g:colors_name) - 1
    exe 'colorscheme ' .. l:colors[l:idx < 0 ? -1 : l:idx]
endfunction

function! TermbaseHighlight(group, fg, bg, attr)
    if a:fg != ""
        exec "highlight " . a:group . " ctermfg=" . a:fg
    endif
    if a:bg != ""
        exec "highlight " . a:group . " ctermbg=" . a:bg
    endif
    if a:attr != ""
        exec "highlight " . a:group . " cterm=" . a:attr
    endif
endfunction

function! TermbaseApply(name = "")
    " Setup theme
    set background=dark
    highlight clear
    syntax reset
    if a:name != ""
        let g:colors_name="termbase16-" . a:name
    endif
    " Vim editor colors
    call TermbaseHighlight("Normal",       g:tb16_5, g:tb16_0, "")
    call TermbaseHighlight("Bold",         "",   "",   "bold")
    call TermbaseHighlight("Debug",        g:tb16_8, "",   "")
    call TermbaseHighlight("Directory",    g:tb16_D, "",   "")
    call TermbaseHighlight("Error",        g:tb16_0, g:tb16_8, "")
    call TermbaseHighlight("ErrorMsg",     g:tb16_8, g:tb16_0, "")
    call TermbaseHighlight("Exception",    g:tb16_8, "",   "")
    call TermbaseHighlight("FoldColumn",   g:tb16_C, g:tb16_1, "")
    call TermbaseHighlight("Folded",       g:tb16_3, g:tb16_1, "")
    call TermbaseHighlight("IncSearch",    g:tb16_1, g:tb16_9, "none")
    call TermbaseHighlight("Italic",       "",   "",   "none")
    call TermbaseHighlight("Macro",        g:tb16_8, "",   "")
    call TermbaseHighlight("MatchParen",   "",   g:tb16_3, "")
    call TermbaseHighlight("ModeMsg",      g:tb16_B, "",   "")
    call TermbaseHighlight("MoreMsg",      g:tb16_B, "",   "")
    call TermbaseHighlight("Question",     g:tb16_D, "",   "")
    call TermbaseHighlight("Search",       g:tb16_1, g:tb16_A, "")
    call TermbaseHighlight("Substitute",   g:tb16_1, g:tb16_A, "none")
    call TermbaseHighlight("SpecialKey",   g:tb16_3, "",   "")
    call TermbaseHighlight("TooLong",      g:tb16_8, "",   "")
    call TermbaseHighlight("Underlined",   g:tb16_8, "",   "")
    call TermbaseHighlight("Visual",       "",   g:tb16_2, "")
    call TermbaseHighlight("VisualNOS",    g:tb16_8, "",   "")
    call TermbaseHighlight("WarningMsg",   g:tb16_8, "",   "")
    call TermbaseHighlight("WildMenu",     g:tb16_8, "",   "")
    call TermbaseHighlight("Title",        g:tb16_D, "",   "none")
    call TermbaseHighlight("Conceal",      g:tb16_D, g:tb16_0, "")
    call TermbaseHighlight("Cursor",       g:tb16_0, g:tb16_5, "")
    call TermbaseHighlight("NonText",      g:tb16_3, "",   "")
    call TermbaseHighlight("LineNr",       g:tb16_3, g:tb16_1, "")
    call TermbaseHighlight("SignColumn",   g:tb16_3, g:tb16_1, "")
    call TermbaseHighlight("StatusLine",   g:tb16_4, g:tb16_2, "none")
    call TermbaseHighlight("StatusLineNC", g:tb16_3, g:tb16_1, "none")
    call TermbaseHighlight("VertSplit",    g:tb16_2, g:tb16_2, "none")
    call TermbaseHighlight("ColorColumn",  "",   g:tb16_1, "none")
    call TermbaseHighlight("CursorColumn", "",   g:tb16_1, "none")
    call TermbaseHighlight("CursorLine",   "",   g:tb16_1, "none")
    call TermbaseHighlight("CursorLineNr", g:tb16_4, g:tb16_1, "")
    call TermbaseHighlight("QuickFixLine", "",   g:tb16_1, "none")
    call TermbaseHighlight("PMenu",        g:tb16_5, g:tb16_1, "none")
    call TermbaseHighlight("PMenuSel",     g:tb16_1, g:tb16_5, "")
    call TermbaseHighlight("TabLine",      g:tb16_3, g:tb16_1, "none")
    call TermbaseHighlight("TabLineFill",  g:tb16_3, g:tb16_1, "none")
    call TermbaseHighlight("TabLineSel",   g:tb16_B, g:tb16_1, "none")
    " Standard syntax highlighting
    call TermbaseHighlight("Boolean",      g:tb16_9, "",   "")
    call TermbaseHighlight("Character",    g:tb16_8, "",   "")
    call TermbaseHighlight("Comment",      g:tb16_3, "",   "")
    call TermbaseHighlight("Conditional",  g:tb16_E, "",   "")
    call TermbaseHighlight("Constant",     g:tb16_9, "",   "")
    call TermbaseHighlight("Define",       g:tb16_E, "",   "none")
    call TermbaseHighlight("Delimiter",    g:tb16_F, "",   "")
    call TermbaseHighlight("Float",        g:tb16_9, "",   "")
    call TermbaseHighlight("Function",     g:tb16_D, "",   "")
    call TermbaseHighlight("Identifier",   g:tb16_8, "",   "none")
    call TermbaseHighlight("Include",      g:tb16_D, "",   "")
    call TermbaseHighlight("Keyword",      g:tb16_E, "",   "")
    call TermbaseHighlight("Label",        g:tb16_A, "",   "")
    call TermbaseHighlight("Number",       g:tb16_9, "",   "")
    call TermbaseHighlight("Operator",     g:tb16_5, "",   "none")
    call TermbaseHighlight("PreProc",      g:tb16_A, "",   "")
    call TermbaseHighlight("Repeat",       g:tb16_A, "",   "")
    call TermbaseHighlight("Special",      g:tb16_C, "",   "")
    call TermbaseHighlight("SpecialChar",  g:tb16_F, "",   "")
    call TermbaseHighlight("Statement",    g:tb16_8, "",   "")
    call TermbaseHighlight("StorageClass", g:tb16_A, "",   "")
    call TermbaseHighlight("String",       g:tb16_B, "",   "")
    call TermbaseHighlight("Structure",    g:tb16_E, "",   "")
    call TermbaseHighlight("Tag",          g:tb16_A, "",   "")
    call TermbaseHighlight("Todo",         g:tb16_A, g:tb16_1, "")
    call TermbaseHighlight("Type",         g:tb16_A, "",   "none")
    call TermbaseHighlight("Typedef",      g:tb16_A, "",   "")
    " C highlighting
    call TermbaseHighlight("cOperator",  g:tb16_C, "", "")
    call TermbaseHighlight("cPreCondit", g:tb16_E, "", "")
    " C# highlighting
    call TermbaseHighlight("csClass",                g:tb16_A, "", "")
    call TermbaseHighlight("csAttribute",            g:tb16_A, "", "")
    call TermbaseHighlight("csModifier",             g:tb16_E, "", "")
    call TermbaseHighlight("csType",                 g:tb16_8, "", "")
    call TermbaseHighlight("csUnspecifiedStatement", g:tb16_D, "", "")
    call TermbaseHighlight("csContextualStatement",  g:tb16_E, "", "")
    call TermbaseHighlight("csNewDecleration",       g:tb16_8, "", "")
    " CSS highlighting
    call TermbaseHighlight("cssBraces",    g:tb16_5, "", "")
    call TermbaseHighlight("cssClassName", g:tb16_E, "", "")
    call TermbaseHighlight("cssColor",     g:tb16_C, "", "")
    " Diff highlighting
    call TermbaseHighlight("DiffAdd",     g:tb16_B, g:tb16_1, "")
    call TermbaseHighlight("DiffChange",  g:tb16_3, g:tb16_1, "")
    call TermbaseHighlight("DiffDelete",  g:tb16_8, g:tb16_1, "")
    call TermbaseHighlight("DiffText",    g:tb16_D, g:tb16_1, "")
    call TermbaseHighlight("DiffAdded",   g:tb16_B, g:tb16_0, "")
    call TermbaseHighlight("DiffFile",    g:tb16_8, g:tb16_0, "")
    call TermbaseHighlight("DiffNewFile", g:tb16_B, g:tb16_0, "")
    call TermbaseHighlight("DiffLine",    g:tb16_D, g:tb16_0, "")
    call TermbaseHighlight("DiffRemoved", g:tb16_8, g:tb16_0, "")
    " Git highlighting
    call TermbaseHighlight("gitcommitOverflow",      g:tb16_8, "", "")
    call TermbaseHighlight("gitcommitSummary",       g:tb16_B, "", "")
    call TermbaseHighlight("gitcommitComment",       g:tb16_3, "", "")
    call TermbaseHighlight("gitcommitUntracked",     g:tb16_3, "", "")
    call TermbaseHighlight("gitcommitDiscarded",     g:tb16_3, "", "")
    call TermbaseHighlight("gitcommitSelected",      g:tb16_3, "", "")
    call TermbaseHighlight("gitcommitHeader",        g:tb16_E, "", "")
    call TermbaseHighlight("gitcommitSelectedType",  g:tb16_D, "", "")
    call TermbaseHighlight("gitcommitUnmergedType",  g:tb16_D, "", "")
    call TermbaseHighlight("gitcommitDiscardedType", g:tb16_D, "", "")
    call TermbaseHighlight("gitcommitBranch",        g:tb16_9, "", "bold")
    call TermbaseHighlight("gitcommitUntrackedFile", g:tb16_A, "", "")
    call TermbaseHighlight("gitcommitUnmergedFile",  g:tb16_8, "", "bold")
    call TermbaseHighlight("gitcommitDiscardedFile", g:tb16_8, "", "bold")
    call TermbaseHighlight("gitcommitSelectedFile",  g:tb16_B, "", "bold")
    " GitGutter highlighting
    call TermbaseHighlight("GitGutterAdd",          g:tb16_B, g:tb16_1, "")
    call TermbaseHighlight("GitGutterChange",       g:tb16_D, g:tb16_1, "")
    call TermbaseHighlight("GitGutterDelete",       g:tb16_8, g:tb16_1, "")
    call TermbaseHighlight("GitGutterChangeDelete", g:tb16_E, g:tb16_1, "")
    " HTML highlighting
    call TermbaseHighlight("htmlBold",   g:tb16_A, "", "")
    call TermbaseHighlight("htmlItalic", g:tb16_E, "", "")
    call TermbaseHighlight("htmlEndTag", g:tb16_5, "", "")
    call TermbaseHighlight("htmlTag",    g:tb16_5, "", "")
    " JavaScript highlighting
    call TermbaseHighlight("javaScript",          g:tb16_5, "", "")
    call TermbaseHighlight("javaScriptBraces",    g:tb16_5, "", "")
    call TermbaseHighlight("javaScriptNumber",    g:tb16_9, "", "")
    call TermbaseHighlight("jsOperator",          g:tb16_D, "", "")
    call TermbaseHighlight("jsStatement",         g:tb16_E, "", "")
    call TermbaseHighlight("jsReturn",            g:tb16_E, "", "")
    call TermbaseHighlight("jsThis",              g:tb16_8, "", "")
    call TermbaseHighlight("jsClassDefinition",   g:tb16_A, "", "")
    call TermbaseHighlight("jsFunction",          g:tb16_E, "", "")
    call TermbaseHighlight("jsFuncName",          g:tb16_D, "", "")
    call TermbaseHighlight("jsFuncCall",          g:tb16_D, "", "")
    call TermbaseHighlight("jsClassFuncName",     g:tb16_D, "", "")
    call TermbaseHighlight("jsClassMethodType",   g:tb16_E, "", "")
    call TermbaseHighlight("jsRegexpString",      g:tb16_C, "", "")
    call TermbaseHighlight("jsGlobalObjects",     g:tb16_A, "", "")
    call TermbaseHighlight("jsGlobalNodeObjects", g:tb16_A, "", "")
    call TermbaseHighlight("jsExceptions",        g:tb16_A, "", "")
    call TermbaseHighlight("jsBuiltins",          g:tb16_A, "", "")
    " LSP highlighting
    call TermbaseHighlight("LspDiagnosticsDefaultError",       g:tb16_8, "", "")
    call TermbaseHighlight("LspDiagnosticsDefaultWarning",     g:tb16_9, "", "")
    call TermbaseHighlight("LspDiagnosticsDefaultInformation", g:tb16_5, "", "")
    call TermbaseHighlight("LspDiagnosticsDefaultHint",        g:tb16_3, "", "")
    " Mail highlighting
    call TermbaseHighlight("mailQuoted1", g:tb16_A, "", "")
    call TermbaseHighlight("mailQuoted2", g:tb16_B, "", "")
    call TermbaseHighlight("mailQuoted3", g:tb16_E, "", "")
    call TermbaseHighlight("mailQuoted4", g:tb16_C, "", "")
    call TermbaseHighlight("mailQuoted5", g:tb16_D, "", "")
    call TermbaseHighlight("mailQuoted6", g:tb16_A, "", "")
    call TermbaseHighlight("mailURL",     g:tb16_D, "", "")
    call TermbaseHighlight("mailEmail",   g:tb16_D, "", "")
    " Markdown highlighting
    call TermbaseHighlight("markdownCode",             g:tb16_B, "",   "")
    call TermbaseHighlight("markdownError",            g:tb16_5, g:tb16_0, "")
    call TermbaseHighlight("markdownCodeBlock",        g:tb16_B, "",   "")
    call TermbaseHighlight("markdownHeadingDelimiter", g:tb16_D, "",   "")
    " NERDTree highlighting
    call TermbaseHighlight("NERDTreeDirSlash", g:tb16_D, "", "")
    call TermbaseHighlight("NERDTreeExecFile", g:tb16_5, "", "")
    " PHP highlighting
    call TermbaseHighlight("phpMemberSelector", g:tb16_5, "", "")
    call TermbaseHighlight("phpComparison",     g:tb16_5, "", "")
    call TermbaseHighlight("phpParent",         g:tb16_5, "", "")
    call TermbaseHighlight("phpMethodsVar",     g:tb16_C, "", "")
    " Python highlighting
    call TermbaseHighlight("pythonOperator",  g:tb16_E, "", "")
    call TermbaseHighlight("pythonRepeat",    g:tb16_E, "", "")
    call TermbaseHighlight("pythonInclude",   g:tb16_E, "", "")
    call TermbaseHighlight("pythonStatement", g:tb16_E, "", "")
    " Ruby highlighting
    call TermbaseHighlight("rubyAttribute",              g:tb16_D, "", "")
    call TermbaseHighlight("rubyConstant",               g:tb16_A, "", "")
    call TermbaseHighlight("rubyInterpolationDelimiter", g:tb16_F, "", "")
    call TermbaseHighlight("rubyRegexp",                 g:tb16_C, "", "")
    call TermbaseHighlight("rubySymbol",                 g:tb16_B, "", "")
    call TermbaseHighlight("rubyStringDelimiter",        g:tb16_B, "", "")
    " SASS highlighting
    call TermbaseHighlight("sassidChar",    g:tb16_8, "", "")
    call TermbaseHighlight("sassClassChar", g:tb16_9, "", "")
    call TermbaseHighlight("sassInclude",   g:tb16_E, "", "")
    call TermbaseHighlight("sassMixing",    g:tb16_E, "", "")
    call TermbaseHighlight("sassMixinName", g:tb16_D, "", "")
    " Signify highlighting
    call TermbaseHighlight("SignifySignAdd",    g:tb16_B, g:tb16_1, "")
    call TermbaseHighlight("SignifySignChange", g:tb16_D, g:tb16_1, "")
    call TermbaseHighlight("SignifySignDelete", g:tb16_8, g:tb16_1, "")
    " Spelling highlighting
    call TermbaseHighlight("SpellBad",   "", "", "undercurl")
    call TermbaseHighlight("SpellLocal", "", "", "undercurl")
    call TermbaseHighlight("SpellCap",   "", "", "undercurl")
    call TermbaseHighlight("SpellRare",  "", "", "undercurl")
    " Startify highlighting
    call TermbaseHighlight("StartifyBracket", g:tb16_3, "", "")
    call TermbaseHighlight("StartifyFile",    g:tb16_7, "", "")
    call TermbaseHighlight("StartifyFooter",  g:tb16_3, "", "")
    call TermbaseHighlight("StartifyHeader",  g:tb16_B, "", "")
    call TermbaseHighlight("StartifyNumber",  g:tb16_9, "", "")
    call TermbaseHighlight("StartifyPath",    g:tb16_3, "", "")
    call TermbaseHighlight("StartifySection", g:tb16_E, "", "")
    call TermbaseHighlight("StartifySelect",  g:tb16_C, "", "")
    call TermbaseHighlight("StartifySlash",   g:tb16_3, "", "")
    call TermbaseHighlight("StartifySpecial", g:tb16_3, "", "")
    " Java highlighting
    call TermbaseHighlight("javaOperator", g:tb16_D, "", "")
endfunction

function! TermbaseClearANSIColors()
    if exists('w:termbase_matches')
        for l:id in w:termbase_matches
            call matchdelete(l:id)
        endfor
        unlet w:termbase_matches
    endif
endfunction

function! TermbaseHighlightANSIColors()
    call TermbaseClearANSIColors()
    let w:termbase_matches = []
    for l:code in range(256)
        let l:group = 'TermbaseColor' . l:code
        let l:bg = (!l:code || l:code == 16 || (l:code > 231 && l:code < 235)) ? 15 : "none"
        execute 'highlight ' . l:group . ' ctermfg=' . l:code . ' ctermbg=' . l:bg
        let l:pattern = '\<'.l:code.'\>'
        call add(w:termbase_matches, matchadd(l:group, l:pattern, 100))
    endfor
endfunction

augroup termbase_highlight_ansi_colors
    autocmd!
    autocmd BufWinEnter */colors/termbase16-*.vim call TermbaseHighlightANSIColors()
    autocmd BufWinLeave */colors/termbase16-*.vim call TermbaseClearANSIColors()
augroup END
