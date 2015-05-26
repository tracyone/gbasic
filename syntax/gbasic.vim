" keyword Vim syntax file
" Language:	    gbasic
" Maintainer:	tracyone <tracyone@live.cn>
" Last Change:	2015-05-26/14:45:28

if exists("b:current_syntax")
    finish
endif

let b:current_syntax="gbasic"

" highlight keywords of gbasic

syntax match gbasicKeyword "\v\cif|elseif|sub|function"

highlight def link gbasicKeyword keyword

" highlight comment of gbasic
"
syntax region gbasicComment start="/\*"  end="\*/"
syntax match gbasicComment "\v'.*$"

highlight def link gbasicComment Comment
"
" highlight number of gbasic
"
" highlight quote string of gbasic
syntax region gbasicString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight def link gbasicString String
"