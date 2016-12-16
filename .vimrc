"Pathogen
execute pathogen#infect()
call pathogen#helptags()

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }

"Sensible vim
runtime! plugin/sensible.vim

"User defined
filetype plugin indent on

set path=/Users/miikasaastamoinen/work/**
set number
set ic
set mouse=a
colorscheme elflord
syntax on

"Keybinds
map ä :exec "Ag " . expand("<cword>")<cr>
map Ä :exec "Ag "<cr>

"Colors
highlight OK        ctermfg=green guifg=#42f456
highlight FAIL      ctermfg=red  guifg=#ff0000
highlight CLARIFY   ctermfg=yellow guifg=#f4d442
highlight NOTE	    ctermfg=yellow guifg=#f4d442
