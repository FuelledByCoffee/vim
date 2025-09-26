
" The query history for this command will be stored as 'ls' inside g:fzf_history_dir.
" The name is ignored if g:fzf_history_dir is not defined.
command! -bang -complete=dir -nargs=? LS
    \ call fzf#run(fzf#wrap('ls', {'source': 'ls', 'dir': <q-args>}, <bang>0))

" See `man fzf-tmux` for available options
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_preview_window = ['right:50%', 'ctrl-l']

" Mapping selecting mappings
nmap <leader>sk <plug>(fzf-maps-n)
xmap <leader>sk <plug>(fzf-maps-x)
omap <leader>sk <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Shortcuts
nmap <leader>sf <cmd>Files<cr>
nmap <leader>sb <cmd>Buffers<cr>
nmap <leader>sg <cmd>Rg<cr>
nmap <leader>sG <cmd>GFiles?<cr>
nmap <leader>sH <cmd>Helptags<cr>
nmap <leader>sh <cmd>History<cr>
nmap <leader>sc <cmd>Commits<cr>
nmap <leader>sC <cmd>Commands<cr>
