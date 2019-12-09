scriptencoding utf-8

" no reload
if !exists('g:loaded_ushitapunikiakun')
  finish
endif

"user settings invalid
let s:save_cpo = &cpo
set cpo&vim

" script
function! ushitapunikiakun#set_ushitapunikiakun(lnum) abort
  call setline(a:lnum, 'う　し　た　ぷ　に　き　あ　く　ん　笑')
endfunction

function! ushitapunikiakun#run() abort
  let l:line = getline('.')
  if(l:line == '')
    call ushitapunikiakun#set_ushitapunikiakun(line('.'))
    return
  endif

  s/\(.\)/\=submatch(1) . g:ushitapunikiakun#insert_char/g
endfunction

function! ushitapunikiakun#all() abort
  let l:source_code_list = getline(0, '$')
  if(len(l:source_code_list) == 1 && l:source_code_list[0] == '')
    call ushitapunikiakun#set_ushitapunikiakun(line('.'))
    return
  endif

  %s/\(.\)/\=submatch(1) . g:ushitapunikiakun#insert_char/g
endfunction

" user setting valid
let &cpo = s:save_cpo
unlet s:save_cpo
