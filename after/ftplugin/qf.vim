set nobuflisted
nnoremap <buffer> <C-o> <cmd>:colder<cr>
nnoremap <buffer> <C-i> <cmd>:cnewer<cr>
if (getwininfo(win_getid())[0].loclist != 1) | wincmd J | endif

nnoremap <expr> <Leader>o empty(filter(getwininfo(), 'v:val.quickfix && !v:val.loclist')) ? ':copen<CR>' : '<c-w>p:cclose<CR>'
