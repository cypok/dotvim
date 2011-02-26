" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
setlocal ts=2 sw=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
setlocal iskeyword+=:

setlocal colorcolumn=80

" suppress KeyboardLayoutSwitcher
autocmd! InsertLeave *
autocmd! InsertEnter *
