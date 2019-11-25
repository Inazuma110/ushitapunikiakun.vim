scriptencoding utf-8

" no reload
if !exists('g:loaded_air')
  finish
endif
let g:ushitapunikiakun#insert_char = '　'

"user settings invalid
let s:save_cpo = &cpo
set cpo&vim

" script
function! ushitapunikiakun#run() abort
  let l:source_code_list = getline(0, '$')
  if(len(source_code_list) == 1 && source_code_list[0] == '')
    call setline(1, 'う　し　た　ぷ　に　き　あ　く　ん　笑')
    unlet source_code_list
    return
  endif

  %s/\(.\)/\=submatch(1) . g:ushitapunikiakun#insert_char/g
endfunction

" user setting valid
let &cpo = s:save_cpo
unlet s:save_cpo
