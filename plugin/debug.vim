packadd termdebug
nnoremap <F5> <cmd>Termdebug<cr>

let g:termdebug_config = {}
let g:termdebug_config['wide'] = 160
let g:termdebug_config['variables_window'] = 1
let g:termdebug_config['variables_window_height'] = 15
let g:termdebug_config['use_prompt'] = 0
" let g:termdebug_config['command'] = "gdb"

hi debugPC ctermbg=darkgray ctermfg=none cterm=none
