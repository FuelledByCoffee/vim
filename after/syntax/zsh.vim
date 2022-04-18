
syntax match zshBrackets    display '[\[\]]'
syntax match zshParenthesis display '[()]'
syntax match zshBraces      display '[{}]'

syntax match flag ' --\?\w\+'
syntax match path display '/\@<=\.\?\(\w*\|\\ *\)*'
syntax match path display '\~'

hi! def link zshParenthesis     Paren
hi! def link zshBrackets        Paren
hi! def link zshBraces          Paren
hi! def link zshVariableDef     Variable
hi! def link zshKshFunction     Function
hi! def link zshFunction        Function

hi! def path ctermfg=darkblue
hi! def flag ctermfg=darkcyan
