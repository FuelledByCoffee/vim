packadd termdebug

let g:termdebug_config = {}
let g:termdebug_config['wide'] = 160
let g:termdebug_config['variables_window'] = 1
let g:termdebug_config['variables_window_height'] = 15
let g:termdebug_config['use_prompt'] = 0
" let g:termdebug_config['command'] = "gdb"

hi debugPC ctermbg=darkgray ctermfg=none cterm=none

nnoremap <F5>      <cmd>Termdebug<cr>
nnoremap <leader>b <cmd>Break<cr>

augroup start_debug
	au!
	au User TermdebugStartPost nnoremap <F5>  <cmd>Continue<cr>
	au User TermdebugStartPost nnoremap <F9>  <cmd>Step<cr>
	au User TermdebugStartPost nnoremap <F10> <cmd>Over<cr>
	au User TermdebugStartPost nnoremap <F11> <cmd>Finish<cr>
augroup END

augroup end_debug
	au!
	au User TermdebugStopPost nnoremap <F5>  <cmd>Termdebug<cr>
augroup END

