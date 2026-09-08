set background=light
set notermguicolors

" Syntax
hi Variable   ctermfg=DarkBlue
hi Special    ctermfg=Red
hi Comment    ctermfg=Grey
hi Statement  ctermfg=DarkYellow
hi Type       ctermfg=DarkYellow
hi Function   ctermfg=Blue
hi String     ctermfg=DarkGreen
hi Constant   ctermfg=DarkGreen
hi Identifier ctermfg=Magenta
hi Paren      ctermfg=109
hi PreProc    ctermfg=DarkMagenta
hi Operator   ctermfg=DarkYellow
hi MatchParen ctermfg=None        ctermbg=None cterm=Underline
hi Todo       ctermfg=DarkMagenta ctermbg=None
hi Title      ctermfg=Green

" Vim UI
hi LineNr          ctermfg=Grey  ctermbg=None
hi CursorLineNr    ctermfg=none  ctermbg=none cterm=none
hi CursorLine      ctermbg=white cterm=None
hi Folded          ctermfg=white ctermbg=DarkGrey
hi Pmenu           ctermfg=white ctermbg=black
hi pmenusel        ctermfg=white ctermbg=black cterm=reverse
hi signcolumn      ctermbg=None
hi VimVar          ctermfg=lightblue
hi VimFunction     ctermfg=74
hi VimHiCtermcolor ctermfg=DarkCyan
hi VimMapMod       ctermfg=DarkGrey
hi VimMapModKey    ctermfg=DarkBlue
hi VimNotation     ctermfg=DarkBlue
hi VimBracket      ctermfg=DarkGrey

hi! def link VimFtOption  Constant
hi! def link VimOption    Constant
hi! def link VimVar       Variable

" QuickFix
hi quickFixLine ctermbg=none
hi qfFileName   ctermfg=DarkGreen
hi qfLineNr     ctermfg=DarkBlue

" Diagnostics
hi Error   ctermfg=1
hi Warning ctermfg=3
hi Info    ctermfg=4

" Lines between splits
hi vertsplit        ctermfg=white ctermbg=none cterm=none
" hi statusline       ctermfg=white ctermbg=Black cterm = none
hi statuslinenc     ctermfg=white ctermbg=Black
hi statuslineterm   ctermfg=black ctermbg=DarkGrey
hi statuslinetermnc ctermfg=black ctermbg=DarkGrey

" Git
hi DiffAdd                ctermfg=2 ctermbg=None
hi DiffChange             ctermfg=3 ctermbg=None
hi DiffDelete             ctermfg=1 ctermbg=None
hi diffAdded              ctermfg=2 ctermbg=None
hi diffRemoved            ctermfg=1 ctermbg=None
hi diffNewFile            ctermfg=2 ctermbg=None
hi diffOldFile            ctermfg=1 ctermbg=None
hi gitcommitSelectedFile  ctermfg=3 ctermbg=None
hi gitcommitDiscardedFile ctermfg=6 ctermbg=None

hi! def link gitconfigVariable variable

hi debugPC ctermbg=darkgray ctermfg=none cterm=none
