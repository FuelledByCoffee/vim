
let mapleader = ','
let g:c_syntax_for_h = 1
let @/ = "" " Don't highlight after source vimrc

inoremap jj <esc>

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>Q :qa<cr>
nnoremap <leader>m :make<cr>
nnoremap <leader>t :term<cr>

nnoremap <silent><tab>    :bnext<cr>
nnoremap <silent><s-tab>  :bNext<cr>

xnoremap <tab>   >gv
xnoremap <S-tab> <gv

inoremap <expr> <tab>   pumvisible() ? "\<C-n>" : "<tab>"
inoremap <expr> <S-tab> pumvisible() ? "\<C-p>" : "<S-tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "<cr>"

nnoremap <silent>ø zA

nnoremap <silent><leader>\| <C-W>L

" Move between splits
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap <silent> √ :move+<CR>
nnoremap <silent> ª :move-2<CR>

nnoremap <silent> // :noh<cr>

" Navigate through quick-fix errors
nnoremap <C-N> :cn<CR>
nnoremap <C-P> :cp<CR>
nnoremap <silent>co :copen<CR>
nnoremap <silent>cc :cclose<CR>

nnoremap <leader>y "*y
nnoremap <leader>p "*p

inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <leader>cf <cmd>silent !clang-format -i %<cr>

syntax on
colorscheme mini

set fillchars=vert:\ ,eob:\ ,fold:\ "
set mouse=a
set modelines=6
set nonumber
set signcolumn=yes
set splitright
set splitbelow
set autoread
set hidden
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
set undolevels=100    " How many undos
set undoreload=1000   " number of lines to save for undo
set undofile          " Save undos after file closes
set undodir=$HOME/.undo-vim
set wildmenu
set wildignorecase    " case is ignored when completing file names and directories
set shortmess+=c      " Silence insert completion messages
set completeopt=menu,menuone,noselect
set omnifunc=syntaxcomplete#Complete

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
  endif
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  elseif exists('&omnifunc') && &omnifunc != ''
    return "\<C-X>\<C-O>"
  else
    return "\<C-N>"
  endif
endfunction
inoremap <expr><Tab> CleverTab()
