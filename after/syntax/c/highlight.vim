
" Highlight all function names
syntax match cCustomFunc /\w\+\s*(/me=e-1,he=e-1

hi def link cCustomFunc Function
hi def link cParen      Paren
hi def link cOperator   Operator

hi cInclude             ctermfg=DarkGray
hi cBracket             ctermfg=DarkGray
hi cBlock               ctermbg=DarkGray

