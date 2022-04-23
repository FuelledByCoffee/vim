let g:gitgutter_map_keys             = 0
let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_grep                 = 'rg'
let g:gitgutter_highlight_lines      = 0
let g:gitgutter_highlight_linenrs    = 0
let g:gitgutter_preview_win_floating = 1

let g:gitgutter_sign_added                   = '+'
let g:gitgutter_sign_modified                = '~'
let g:gitgutter_sign_removed                 = '_'
let g:gitgutter_sign_removed_first_line      = '‾'
let g:gitgutter_sign_removed_above_and_below = '_¯'
let g:gitgutter_sign_modified_removed        = '~-'

command! Gqf GitGutterQuickFix | copen

nnoremap <leader>G  <cmd>Gqf<cr>
nnoremap <leader>ga <cmd>GitGutterStageHunk<cr>
nnoremap <leader>gu <cmd>GitGutterUndoHunk<cr>
nnoremap         gp <cmd>GitGutterPreviewHunk<cr>
nnoremap <leader>gf <cmd>GitGutterFold<cr>
nnoremap <leader>g[ <cmd>GitGutterNextHunk<cr>
nnoremap <leader>g] <cmd>GitGutterPrevHunk<cr>

