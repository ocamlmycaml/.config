

" Using lightline
set noshowmode
if !has('gui_running')
    set t_Co=256
endif

let g:lightline = {
    \ 'active': {
    \   'left': [['mode'],
    \            ['fugitive', 'readonly', 'filename', 'modified']]
    \ },
    \ 'colorscheme': 'PaperColor',
    \ 'component' : {
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
    \ }
    \ }
