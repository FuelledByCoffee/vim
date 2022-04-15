
syntax match Braces display '[{}()\[\]]'

let pyOperatorList  = '[-&|+<>=*/!~]'    " A list of symbols that we don't want to immediately precede the operator
let pyOperatorList .= '\@<!'             " Negative look-behind (check that the preceding symbols aren't there)
let pyOperatorList .= '\%('              " Beginning of a list of possible operators
let pyOperatorList .=     '\('           " First option, the following symbols...
let pyOperatorList .=        '[<>=/*]'
let pyOperatorList .=     '\)'
let pyOperatorList .=     '\1\?'         " Followed by (optionally) the exact same symbol, so -, --, =, ==, &, && etc
let pyOperatorList .= '\|'               " Next option:
let pyOperatorList .=     '->'           " Return type operator
let pyOperatorList .= '\|'               " Next option:
let pyOperatorList .=     '\('           " First option, the following symbols...
let pyOperatorList .=        '[-+*/%!]'  " One of the listed symbols followed by an =, e.g. +=, -=, &= etc
let pyOperatorList .=     '\)'
let pyOperatorList .=     '=\?'          " Followed by (optionally) =
let pyOperatorList .= '\|'               " Next option:
let pyOperatorList .=     '[:.,]'        " Single character operators
let pyOperatorList .= '\|'               " Next option:
let pyOperatorList .=     '\('           " One of the shift characters:
let pyOperatorList .=         '[<>]'
let pyOperatorList .=     '\)'
let pyOperatorList .=     '\2\?'         " Optionally followed by another identical character, so << or >>...
let pyOperatorList .=     '='            " Followed by =, so <<= or >>=.
let pyOperatorList .= '\)'               " End of the long list of options
let pyOperatorList .= '[-+/*&|^~<>=!]'   " The list of symbols that we don't want to follow
let pyOperatorList .= '\@!'              " Negative look-ahead (this and the \@<! prevent === etc from matching)

exe "syn match pyOperator display '" . pyOperatorList . "'"

hi! link Braces      Paren
hi! link pyOperator  Operator
