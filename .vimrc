" SANDY'S .VIMRC
"==================================
execute pathogen#infect()

"let g:airline_theme='angr'

if has('gui_running')
    set background=dark
    colorscheme solarized
    let g:airline_theme='solarized'
else
    set background=dark
endif
"colorscheme solarized 
"highlight Normal ctermbg=blue

filetype plugin indent on
syntax on
set number
set relativenumber
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Solarized colours 
"let g:solarized_termtrans=0
"set background=dark
"colorscheme solarized

