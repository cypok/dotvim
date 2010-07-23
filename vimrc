set nocompatible
set backspace=indent,eol,start
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set mouse=a
syntax on
set hlsearch
set undofile

autocmd BufWritePre * :%s/\s\+$//e

filetype plugin indent on
autocmd FileType text setlocal textwidth=78
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

colorscheme vividchalk
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set number
set nowrap
set winminheight=0
set foldmethod=indent
set foldlevelstart=99 " all folds are opened
set guioptions-=T
if has("gui_gtk2")
  set guifont=Monaco\ 8,Andale\ Mono\ 11
elseif has("gui_win32")
  set guifont=Lucida_Console:h9
else
  set guifont=Monaco:h12
end

set tags+=~/.vim/systags

let g:gist_open_browser_after_post = 1
let g:gist_browser_command = 'chromium-browser %URL%'
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1

nmap <C-}> :tabnext
imap <C-}> <Esc>:tabnext
nmap <C-{> :tabprevious
imap <C-{> <Esc>:tabprevious
nmap <C-P> :tabnew

nmap <C-h> <C-w>h
imap <C-h> <Esc><C-w>ha
nmap <C-j> <C-w>j
imap <C-j> <Esc><C-w>ja
nmap <C-k> <C-w>k
imap <C-k> <Esc><C-w>ka
nmap <C-l> <C-w>l
imap <C-l> <Esc><C-w>la
nmap <C-n> <C-w>n
nmap <C-m> <C-w>_
" imap <C-m> <Esc><C-w>_a

nmap <F5> :wa:make
imap <F5> <Esc>:wa:make
nmap <F6> :cwin
imap <F6> <Esc>:cwin

map <F8> :!ctags -R  --c-kinds=+p --fields=+S

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

