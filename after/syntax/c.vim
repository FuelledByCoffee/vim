
" Highlight all function names
syntax match cCustomFunc /\w\+\s*(/me=e-1,he=e-1
syntax match Braces display '[{}()\[\]]'
syntax match Ops    display '[,\+\-\*=\!;%\^\<\>&\.]'

hi! def link cCustomFunc Function
hi! def link Ops         Operator
hi! def link Braces      Paren
hi! def link cOperator   Operator
hi! def link cformat     cSpecial
hi! def link cDefine     cPreProc
hi! def link cInclude    cPreProc
hi! def link cCppBracket Paren
hi! def link cCppSkip    Paren
hi! def link cCppBadBlock Paren

" hi def link cFormat     Type
hi! cSpecial             ctermfg=Blue
hi! cBracket             ctermfg=DarkGray
hi! cBlock               ctermbg=DarkGray
hi! cOctal               ctermbg=Red

