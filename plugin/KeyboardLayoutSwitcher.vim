" Smart keyboard switching

" Initialize smart keyboard switching global variables

" Use 0 if you are using default english keyboard layout (U.S.)
let g:defaultInputSourceIndex = 0 " Index of default keyboard layout
let g:switcherPath = "~/.vim/bin/KeyboardLayoutSwitcher" " Path to KeyboardLayoutSwitcher binary

" Store index of current keyboard layout into variable
function! StoreCurrentInputSource()
	let t:currentInputSourceIndex = system(g:switcherPath) 

	return t:currentInputSourceIndex
endfunction

function! SwitchToDefaultInputSource()
	return system(g:switcherPath . " " . g:defaultInputSourceIndex)
endfunction

function! StoreCurrentAndSwitchToDefaultInputSource()
  call StoreCurrentInputSource()
  call SwitchToDefaultInputSource()
endfunction

" Restore stored index of keyboard layout from variable
function! RestoreLastInputSource()
	if exists("t:currentInputSourceIndex")
		return system(g:switcherPath . " " . t:currentInputSourceIndex)
	else
		return SwitchToDefaultInputSource()
	endif
endfunction

autocmd InsertLeave * call StoreCurrentAndSwitchToDefaultInputSource()
autocmd InsertEnter * call RestoreLastInputSource()

"noremap : :silent call SwitchToDefaultInputSource()<CR>:
"noremap <silent> <Esc><Esc> :silent call SwitchToDefaultInputSource()<Esc><Esc>
"cnoremap <silent> <Esc><Esc> :silent call SwitchToDefaultInputSource()<Esc><Esc>

