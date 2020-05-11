" remove all autocommands in current group
autocmd!

" tab spacing
set expandtab
set tabstop=4
set shiftwidth=4
set tw=120

" basic syntax stuff
set number
set nocompatible
set encoding=utf-8
syntax enable

let g:plug_timeout = 300
call plug#begin(stdpath('data') . '/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'terryma/vim-multiple-cursors'

    " coz programming
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-endwise'
    Plug 'Raimondi/delimitMate'

    " git'r done
    Plug 'airblade/vim-gitgutter'

    " coz humans can't remember shit
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

    " coz beauty is only skin deep. Damn I have some deep skin
    Plug 'itchyny/lightline.vim'

call plug#end()

" theme config
source ~/.config/nvim/theme.vim

" key mappings
source ~/.config/nvim/keymap.vim

" trailing whitespace
augroup prewrites
    autocmd!
    autocmd BufWritePre,FileWritePre * :%s/\s\+$//e | %s/\r$//e
augroup END

" some filetypes are stubborn
au BufRead,BufNewFile *.asm set filetype=nasm
