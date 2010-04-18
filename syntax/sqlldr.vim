" Vim syntax file
" Language:    Oracle SQL*Loader
" Maintainer:  $Author: adrury $
" Last Change: $Date: 2004/02/23 15:40:22 $
" based on sql.vim

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" The SQL*Loader reserved words, defined as keywords.

syn keyword sqlldrSpecial  and append 
syn keyword sqlldrSpecial  badfile begindata bindsize blanks blocksize by byteorder 
syn keyword sqlldrSpecial  char characterset column concatenate constant continueif continue_load count
syn keyword sqlldrSpecial  date decimal defaultif delete direct disabled_constraints discarddn discardfile discardmax discards
syn keyword sqlldrSpecial  enclosed eof exceptions external errors
syn keyword sqlldrSpecial  false filler fixed format
syn keyword sqlldrSpecial  generated graphic
syn keyword sqlldrSpecial  inddn indexes insert
syn keyword sqlldrSpecial  last lobfile log
syn keyword sqlldrSpecial  max mlslabel
syn keyword sqlldrSpecial  nested next no nullcols nullif
syn keyword sqlldrSpecial  object oid optionally
syn keyword sqlldrSpecial  part parallel partition pieced position preserve
syn keyword sqlldrSpecial  raw readbuffers readsize reclen recnum record recoverable reenable ref replace resume rows
syn keyword sqlldrSpecial  sdf sequence sid silent singlerow skip skip_unusable_indexes skip_index_maintenance sortdevt sorted sortnum sql/ds storage stream subpartition sysdate
syn keyword sqlldrSpecial  table terminated this trailing true truncate
syn keyword sqlldrSpecial  unload unrecoverable using userid
syn keyword sqlldrSpecial  variable varray
syn keyword sqlldrSpecial  when whitespace workddn
syn keyword sqlldrSpecial  yes

syn keyword sqlldrOperator options load data infile into table fields

syn keyword sqlldrType    byteint
syn keyword sqlldrType    double decimal
syn keyword sqlldrType    float
syn keyword sqlldrType    integer
syn keyword sqlldrType    long varraw
syn keyword sqlldrType    smallint
syn keyword sqlldrType    vargraphic varchar varraw
syn keyword sqlldrType    zoned

syn keyword sqlldrType    char
syn keyword sqlldrType    date decimal external
syn keyword sqlldrType    float external
syn keyword sqlldrType    graphic external
syn keyword sqlldrType    integer external
syn keyword sqlldrType    raw
syn keyword sqlldrType    varcharc varrawc
syn keyword sqlldrType    zoned external

" Strings and characters:
syn region sqlldrString      start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region sqlldrString      start=+'+  skip=+\\\\\|\\'+  end=+'+

" Numbers:
syn match sqlldrNumber      "-\=\<\d*\.\=[0-9_]\>"

" Comments:
syn region sqlldrComment    start="/\*"  end="\*/" contains=sqlldrTodo
syn match sqlldrComment    "--.*$" contains=sqlldrTodo

syn sync ccomment sqlldrComment

" Todo.
syn keyword sqlldrTodo TODO FIXME XXX DEBUG NOTE

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_sqlldr_syn_inits")
  if version < 508
    let did_sqlldr_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sqlldrComment   Comment
  HiLink sqlldrKeyword   sqlldrSpecial
  HiLink sqlldrNumber    Number
  HiLink sqlldrOperator  sqlStatement
  HiLink sqlldrSpecial   Special
  HiLink sqlStatement    Statement
  HiLink sqlldrString    String
  HiLink sqlldrType      Type
  HiLink sqlldrTodo      Todo

  delcommand HiLink
endif

let b:current_syntax = "sqlldr"

" vim: ts=8
