execute pathogen#infect()

set number

syntax on
set t_Co=16
set background=dark
colorscheme solarized

set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set autoindent

let delimitMate_expand_cr = 1

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
