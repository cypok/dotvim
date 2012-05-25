" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
setlocal ts=2 sw=2

setlocal colorcolumn=80
setlocal textwidth=79

" suppress KeyboardLayoutSwitcher
autocmd! InsertLeave *
autocmd! InsertEnter *

let b:AutoClosePairs = AutoClose#DefaultPairsModified("$", "")
