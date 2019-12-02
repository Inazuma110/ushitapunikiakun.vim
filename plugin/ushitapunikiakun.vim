scriptencoding utf-8

" no reload
if exists('g:loaded_ushitapunikiakun')
  finish
endif
let g:loaded_ushitapunikiakun = 1

"user settings invalid
let s:save_cpo = &cpo
set cpo&vim

" script
command! Ushitapunikiakun call ushitapunikiakun#run()
command! UshitapunikiakunAll call ushitapunikiakun#all()

" user setting valid
let &cpo = s:save_cpo
unlet s:save_cpo
