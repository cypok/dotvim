" ghcmod
autocmd BufWritePost *.hs GhcModCheckAndLintAsync

" ghcmod: the statusline has [No Errors] or [Errors Found] field.
" let &l:statusline = '%{empty(getqflist()) ? "[No Errors]" : "[Errors Found]"}' . (empty(&l:statusline) ? &statusline : &l:statusline)

nnoremap <buffer> <Leader>ht :GhcModType<CR>
nnoremap <buffer> <silent> <Leader>hc :GhcModTypeClear<CR>
nnoremap <buffer> <silent> <Leader>hi :GhcModInfo<CR>

hi ghcmodType ctermfg=0 ctermbg=14 guifg=Black guibg=Yellow
let g:ghcmod_type_highlight = 'ghcmodType'
