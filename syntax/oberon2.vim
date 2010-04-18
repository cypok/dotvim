" Vim syntax file
" Language:	Oberon 2
" Maintainer:	alexcheremkhin@mail.ru (Alexey Cheremkhin)
"   based on original work of Bram Moolenaar <Bram@vim.org>
"   and modula2.vim by Peter Funk <pf@artcom0.north.de>
" Last Change:	2007 Dec 18

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Don't ignore case (Oberon-2 is case significant). This is the default in vim

" Especially emphasize headers of procedures and modules:
syn region oberon2Header matchgroup=oberon2Header start="PROCEDURE " end="(" contains=oberon2Ident oneline
syn region oberon2Header matchgroup=oberon2Header start="MODULE " end=";" contains=oberon2Ident,oberon2Const oneline
syn region oberon2Header matchgroup=oberon2Header start="BEGIN (\*" end="\*)" contains=oberon2Ident oneline
syn region oberon2Header matchgroup=oberon2Header start="END " end=";" contains=oberon2Ident oneline
syn region oberon2Keyword start="END" end=";" contains=ALLBUT,oberon2Ident oneline

" Some very important keywords which should be emphasized more than others:
syn keyword oberon2AttKeyword ASSERT EXIT HALT RETURN SYSTEM
" All other keywords:
syn keyword oberon2Keyword CONST TYPE VAR
syn keyword oberon2Keyword AND ARRAY BY CASE DEFINITION DIV DO ELSE
syn keyword oberon2Keyword ELSIF FOR IF IMPORT
syn keyword oberon2Keyword IN IS LOOP MOD OF OR POINTER RECORD
syn keyword oberon2Keyword THEN TO UNTIL WHILE WITH
syn keyword oberon2Keyword BEGIN END MODULE PROCEDURE REPEAT

syn keyword oberon2Type BOOLEAN CHAR INTEGER REAL SET
syn keyword oberon2Type LONGINT LONGREAL SHORTINT

syn keyword oberon2StdConst FALSE NIL TRUE

syn keyword oberon2StdFunc ABS CAP CHR DEC EXCL INC INCL ORD SIZE
syn keyword oberon2StdFunc MAX MIN NEW
" The underscore was originally disallowed in m2 ids, it was also added later:
syn match   oberon2Ident / [A-Za-z][A-Za-z0-9_]*/ contained
syn match   oberon2Const / [0-9][0-9A-FHX.\-+]*/

" Comments may be nested in Oberon-2:
syn region oberon2Comment start="(\*" end="\*)" contains=oberon2Comment,oberon2Todo
syn keyword oberon2Todo	contained TODO FIXME XXX

" Strings
syn region oberon2String start=+"+ end=+"+
syn region oberon2String start="'" end="'"
syn region oberon2Set start="{" end="}"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_oberon2_syntax_inits")
  if version < 508
    let did_oberon2_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink oberon2Ident		Identifier
  HiLink oberon2StdConst	Boolean
  HiLink oberon2Const		Boolean
  HiLink oberon2Type		Identifier
  HiLink oberon2StdFunc		Identifier
  HiLink oberon2Header		Type
  HiLink oberon2Keyword		Statement
  HiLink oberon2AttKeyword	PreProc
  HiLink oberon2Comment		Comment
  " The following is just a matter of taste (you want to try this instead):
  " hi oberon2Comment term=bold ctermfg=DarkBlue guifg=Blue gui=bold
  HiLink oberon2Todo		Todo
  HiLink oberon2String		String
  HiLink oberon2Set		String

  delcommand HiLink
endif

let b:current_syntax = "oberon2"

abbr array ARRAY
abbr begin BEGIN
abbr boolean BOOLEAN
abbr case CASE
abbr const CONST
abbr div DIV
abbr do DO
abbr else ELSE
abbr elsif ELSIF
abbr end END
abbr exit EXIT
abbr false FALSE
abbr for FOR
abbr if IF
abbr import IMPORT
abbr in IN
abbr integer INTEGER
abbr is IS
abbr longint LONGINT
abbr longreal LONGREAL
abbr loop LOOP
abbr mod MOD
abbr module MODULE
abbr of OF
abbr pointer POINTER
abbr procedure PROCEDURE
abbr real REAL
abbr record RECORD
abbr repeat REPEAT
abbr return RETURN
abbr set SET
abbr shortint SHORTINT
abbr shortreal SHORTREAL
abbr then THEN
abbr to TO
abbr true TRUE
abbr type TYPE
abbr until UNTIL
abbr var VAR
abbr while WHILE
abbr with WITH



" vim: ts=8
set ts=2
set sw=2

