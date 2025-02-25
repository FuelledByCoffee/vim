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

function! Begin_debug()
	nnoremap <F5>  <cmd>Continue<cr>
	nnoremap <F9>  <cmd>Step<cr>
	nnoremap <F10> <cmd>Over<cr>
	nnoremap <F11> <cmd>Finish<cr>

	nnoremap b <cmd>Break<cr>
	nnoremap c <cmd>Clear<cr>
endfunction

function! End_debug()
	nnoremap <F5> <cmd>Termdebug<cr>
	nunmap b
	nunmap c
endfunction

augroup debug_overrides
	au!
	au User TermdebugStartPost call Begin_debug()
	au User TermdebugStopPost  call End_debug()
augroup END

