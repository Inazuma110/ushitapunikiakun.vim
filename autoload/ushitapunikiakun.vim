scriptencoding utf-8

" no reload
if !exists('g:loaded_air')
  finish
endif
let g:insert_char = '　'

"user settings invalid
let s:save_cpo = &cpo
set cpo&vim

" script
function! ushitapunikiakun#insert() abort
  let l:source_code = execute('!cat %')
  let char_len = strlen(l:source_code)
  for s:i in range(char_len)
    echon l:source_code[s:i]
    if l:source_code[s:i] != '\n'
      echon g:insert_char
    endif
  endfor

endfunction


" user setting valid
let &cpo = s:save_cpo
unlet s:save_cpo
