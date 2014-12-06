" sendmail_example.vim

let s:save_cpo = &cpo
set cpo&vim

let s:SMTP = vital#of('sendmail_example').import('SMTP')

function! sendmail_example#sendmail()
    let host = input('host: ')
    let port = input('port: ')
    let user = input('user: ')
    let password = inputsecret('password: ')
    let from = input('from: ')
    let to = input('to: ')
    let message = input('message: ')

    let msg = printf("From: %s\r\nTo: %s\r\n\r\n%s", from, to, message)

    call s:SMTP.sendmail(
                \ {'host': host, 'port': port},
                \ user, password,
                \ from, to, msg)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
