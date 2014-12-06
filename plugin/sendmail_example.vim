" sendmail_example.vim

if exists('g:loaded_sendmail_example')
  finish
endif
let g:loaded_sendmail_example = 1

let s:save_cpo = &cpo
set cpo&vim

command! Sendmail call sendmail_example#sendmail()

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
