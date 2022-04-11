
" Highlight all function names
syntax match cCustomFunc /\w\+\s*(/me=e-1,he=e-1
syntax match Braces display '[{}()\[\]]'
" syntax match Ops    display '[,\+\-\*=\!;%\^\<\>&\.]'

let cOperatorList  = '[-&|+<>=*/!~]'    " A list of symbols that we don't want to immediately precede the operator
let cOperatorList .= '\@<!'             " Negative look-behind (check that the preceding symbols aren't there)
let cOperatorList .= '\%('              " Beginning of a list of possible operators
let cOperatorList .=     '\('           " First option, the following symbols...
let cOperatorList .=        '[-&|+<>=]'
let cOperatorList .=     '\)'
let cOperatorList .=     '\1\?'         " Followed by (optionally) the exact same symbol, so -, --, =, ==, &, && etc
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '->'           " Pointer dereference operator
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '[-+*/%&^|!]=' " One of the listed symbols followed by an =, e.g. +=, -=, &= etc
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '[*?,!~%.]'     " Some simple single character operators
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '\('           " One of the shift characters:
let cOperatorList .=         '[<>]'     
let cOperatorList .=     '\)'
let cOperatorList .=     '\2'           " Followed by another identical character, so << or >>...
let cOperatorList .=     '='            " Followed by =, so <<= or >>=.
let cOperatorList .= '\)'               " End of the long list of options
let cOperatorList .= '[-&|+<>=*/!~]'    " The list of symbols that we don't want to follow
let cOperatorList .= '\@!'              " Negative look-ahead (this and the \@<! prevent === etc from matching)

exe "syn match cOperator display '" . cOperatorList . "'"

syn match cOperator display ';'
hi link cOperator Operator

hi! def link cCustomFunc Function
hi! def link Ops         Operator
hi! def link Braces      Paren
hi! def link cOperator   Operator
hi! def link cformat     cSpecial
hi! def link cDefine     cPreProc
hi! def link cInclude    cPreProc
hi! def link cCppBracket Paren
hi! def link cCppSkip    Paren

" hi def link cFormat     Type
hi! cSpecial             ctermfg=Blue
hi! cBracket             ctermfg=DarkGray
hi! cBlock               ctermbg=DarkGray
hi! cOctal               ctermbg=Red

