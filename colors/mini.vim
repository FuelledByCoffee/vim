set background=dark

" Syntax
hi Variable           ctermfg=DarkBlue cterm=bold
hi Special            ctermfg=Red
hi Comment            ctermfg=Grey
hi Statement          ctermfg=DarkYellow
hi Type               ctermfg=DarkBlue
hi Function           ctermfg=Blue
hi String             ctermfg=DarkGreen
hi Constant           ctermfg=DarkGreen
hi Identifier         ctermfg=DarkBlue
hi Paren              ctermfg=DarkRed
hi PreProc            ctermfg=DarkMagenta
hi Operator           ctermfg=DarkYellow
hi MatchParen         ctermfg=None        ctermbg=DarkBlue    cterm=None
hi Todo               ctermfg=DarkMagenta ctermbg=None
hi Title              ctermfg=Green

" Vim UI
hi LineNr             ctermfg=Grey     ctermbg=None
hi CursorLineNr       ctermfg=White    ctermbg=None cterm=None
hi Folded             ctermfg=Black    ctermbg=DarkGrey
hi Pmenu              ctermfg=white    ctermbg=8
hi pmenusel           ctermfg=black    ctermbg=blue
hi signcolumn         ctermbg=None
hi CursorLine         cterm=None

" Lines between splits
hi vertsplit          ctermfg=DarkGrey ctermbg=Black
hi statusline         ctermfg=DarkGrey ctermbg=Black
hi statuslinenc       ctermfg=DarkGrey ctermbg=Black
hi statuslineterm     ctermbg=DarkGrey ctermfg=black
hi statuslinetermnc   ctermbg=DarkGrey ctermfg=black

" Git
hi diffRemoved            ctermfg=1
hi diffAdded              ctermfg=2
hi diffOldFile            ctermfg=1
hi diffNewFile            ctermfg=2
hi gitcommitSelectedFile  ctermfg=3
hi gitcommitDiscardedFile ctermfg=6

