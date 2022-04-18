
syntax match zshBrackets    display '[\[\]]'
syntax match zshParenthesis display '[()]'
syntax match zshBraces      display '[{}]'

syntax match flag '--\?[a-zA-Z]\+'

hi! def link zshParenthesis     Paren
hi! def link zshBrackets        Paren
hi! def link zshBraces          Paren
hi! def link zshVariableDef     Variable
hi! def link zshKshFunction     Function
hi! def link zshFunction        Function

hi! def flag ctermfg=darkcyan
