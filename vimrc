call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set incsearch
set mouse=a
syntax on
set hlsearch

set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

if !exists("g:spaces_trim_disable")
  autocmd BufWritePre * :%s/\s\+$//e
endif

filetype plugin indent on
autocmd FileType text setlocal textwidth=78
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

colorscheme vividchalk
" TODO: check if following lines are required
" I hate italic comments
highlight Comment gui=NONE
" And love visible colorcolumn
highlight ColorColumn guibg=#808080 guifg=NONE

set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set number
set nowrap
set scrolloff=4
set winminheight=0
set foldmethod=indent
set foldlevelstart=99 " all folds are opened

set guioptions-=T
set guioptions-=m

if has("gui_win32")
  set lines=999 columns=120
end

if has("macunix")
  set guifont=Monaco:h12
elseif has("gui_win32")
  set guifont=Lucida_Console:h9
  set linespace=3
elseif has("gui_gtk2")
  set guifont=Monaco\ 8,Andale\ Mono\ 11
end

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp1251,koi8-r,default,latin1

set tags+=~/.vim/systags

let g:gist_open_browser_after_post = 0
let g:gist_detect_filetype = 1
if has("macunix")
  let g:gist_clip_command = 'pbcopy'
elseif has("gui_win32")
  let g:gist_clip_command = 'xclip -selection clipboard'
end

let g:kls_focusSwitching = 0
let g:kls_tabSwitching = 0
let g:kls_insertEnterRestoresLast = 1
let g:kls_mappings = 0

let g:rtfh_theme = 'mywhite'
let g:rtfh_font = 'Courier'
map <Leader>hc :RTFHighlight c<CR>
map <Leader>hs :RTFHighlight scala<CR>

let g:NERDCustomDelimiters = { 'ledger': { 'left': ';' } }
let g:NERDTreeIgnore=['\~$', '\.hi$', '\.o$']
let g:NERDTreeChDirMode=2 " cwd when root is changed
let g:NERDTreeHighlightCursorline=0

let g:AutoCloseExpandSpace = 0

map <Leader>F :FufCoverageFile<CR>
map <Leader>l :FufLine<CR>

nnoremap Q gq
vnoremap Q gq

" mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
  if &wrap
    return "g" . a:movement
  else
    return a:movement
  endif
endfunction
vnoremap <silent> <expr> j ScreenMovement("j")
vnoremap <silent> <expr> k ScreenMovement("k")
vnoremap <silent> <expr> 0 ScreenMovement("0")
vnoremap <silent> <expr> ^ ScreenMovement("^")
vnoremap <silent> <expr> $ ScreenMovement("$")
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")

nmap <C-}> :tabnext
imap <C-}> <Esc>:tabnext
nmap <C-{> :tabprevious
imap <C-{> <Esc>:tabprevious
nmap <C-P> :tabnew


nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-n> <C-w>n
nmap <C-M> <C-w>_

nmap <C-Left> zc
imap <C-Left> <Esc>zca
nmap <C-Right> zo
imap <C-Right> <Esc>zoa

vmap <C-Insert> "+y
nmap <S-Insert> "+p
imap <S-Insert> <C-o><S-Insert>

nmap <Home> ^
imap <Home> <Esc>^i

map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

