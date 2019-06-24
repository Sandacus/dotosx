" SANDY'S .VIMRC
"==================================
execute pathogen#infect()

if has('gui_running')
    set background=dark
    colorscheme solarized
    let g:airline_theme='solarized'
else
    set background=dark
    colorscheme farout 
endif

filetype plugin indent on
syntax on
set number
set relativenumber
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

