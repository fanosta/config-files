syntax on
set number

set expandtab
set tabstop=4

" this will break any sequences using escape in insert mode
" but will fix the delay when pressing esc
:set esckeys

" plugin system
execute pathogen#infect()
