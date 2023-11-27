
let mapleader = ','
let g:c_syntax_for_h = 1
let @/ = "" " Don't highlight after source vimrc
let $MANPAGER=""

inoremap jj <esc>

nnoremap <leader>w <cmd>w<cr>
nnoremap <leader>q <cmd>q<cr>
nnoremap <leader>d <cmd>bd<cr>
nnoremap <leader>Q <cmd>qa<cr>
nnoremap <leader>m <cmd>make<cr>
nnoremap <leader>t <cmd>term<cr>

nnoremap <silent><tab>    <cmd>bnext<cr>
nnoremap <silent><s-tab>  <cmd>bNext<cr>

xnoremap <tab>   >gv
xnoremap <S-tab> <gv

inoremap <expr> <tab>   pumvisible() ? "\<C-n>" : "<tab>"
inoremap <expr> <S-tab> pumvisible() ? "\<C-p>" : "<S-tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "<cr>"

nnoremap <silent>ø zA

" Move between splits
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Move lines up/down
nnoremap <silent> √ <cmd>move+<CR>
nnoremap <silent> ª <cmd>move-2<CR>

" Move visual block
xnoremap √ :m '>+1<CR>gv=gv
xnoremap ª :m '<-2<CR>gv=gv

nnoremap <silent> // <cmd>noh<cr>

" Navigate through quick-fix errors
nnoremap <C-N> <cmd>cn<CR>
nnoremap <C-P> <cmd>cp<CR>
nnoremap <silent>co <cmd>copen<CR>
nnoremap <silent>cc <cmd>cclose<CR>

nnoremap <leader>y "*y
nnoremap <leader>p "*p

xnoremap <leader>y "*y
xnoremap <leader>p "*p

inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

au FileType c,cpp,json nnoremap <leader>f <cmd>!clang-format -i %<cr><cr>

syntax on
colorscheme mini

set mouse=a
set backspace=indent,eol,start
set nowrap
set modelines=6
set updatetime=100  " Decrease update time
set nonumber        " Clean no number
set signcolumn=yes  " For git signs
set cursorline
set splitright
set splitbelow
set autoread
set hidden          " Modify buffers not in view
set nobackup
set nowritebackup
set hlsearch
set incsearch
set foldlevel=0
set foldmethod=marker
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
set smartindent
set smarttab
set scrolloff=7
set sidescrolloff=5
set undolevels=100  " How many undos
set undoreload=1000 " number of lines to save for undo
set undofile        " Save undos after file closes
set undodir=$HOME/.undo-vim
set rtp+=$FZF_DIR
set wildmenu
set wildignorecase  " case is ignored when completing file names and directories
set shortmess+=c
set completeopt=menu,menuone,noselect
set complete+=kspell
set omnifunc=syntaxcomplete#Complete

filetype on
filetype plugin on
filetype indent on

autocmd FileType help wincmd L

" jump to previous position when reopening a file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g'\""
      \| endif


" Show syntax highlighting groups for word under cursor
command! CheckHighlightUnderCursor echo {l,c,n ->
      \   'hi:'    . synIDattr(synID(l, c, 1), n) . ' -> '
      \  .'trans:' . synIDattr(synID(l, c, 0), n) . ' -> '
      \  .'lo:'    . synIDattr(synIDtrans(synID(l, c, 1)), n)
      \ }(line("."), col("."), "name")
nmap <F2> <cmd>CheckHighlightUnderCursor<cr>


function! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
nnoremap <leader><space> :call TrimWhitespace()<cr>


function! CleverTab()
  if pumvisible()
    return "\<C-N>"
  elseif strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  elseif exists('&omnifunc') && &omnifunc != ''
    return "\<C-X>\<C-O>"
  else
    return "\<C-N>"
  endif
endfunction
inoremap <expr><Tab> CleverTab()
