
function! IsInsertTrigger()
  return (v:char >= 'a' && v:char <= 'z') || (v:char >= 'A' && v:char <= 'Z') || (v:char == '.')
endfunction

function! OpenCompletion()
  if !pumvisible() && IsInsertTrigger()
    call feedkeys("\<C-x>\<C-i>", "n")
  elseif !pumvisible() && v:char == '/'
    call feedkeys("\<C-x>\<C-f>", "n")
  endif
endfunction
autocmd InsertCharPre * call OpenCompletion()

