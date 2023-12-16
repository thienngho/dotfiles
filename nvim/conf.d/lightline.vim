let g:lightline = {
\   'colorscheme': 'darcula',
\   'active': {
\       'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
\   },
\   'tabline': {
\       'left': [ ['buffers'] ],
\   },
\   'component_expand': {
\       'buffers': 'lightline#bufferline#buffers'
\   },
\   'component_type': {
\       'buffers': 'tabsel'
\   },
\   'component_raw': {
\       'buffers': '1'
\   },
\   'component_function': {
\       'lineinfo': 'LightlineLineinfo'
\   },
\   'separator': {
\       'left': '',
\       'right': ''
\   },
\ }

let g:lightline#bufferline#enable_devicons  = 1
let g:lightline#bufferline#enable_nerdfont  = 1
let g:lightline#bufferline#unicode_symbols  = 1
let g:lightline#bufferline#min_buffer_count = 2
let g:lightline#bufferline#clickable        = 1
let g:lightline#bufferline#min_tab_count    = 2
let g:lightline#bufferline#show_number      = 1
let g:lightline#bufferline#shorten_path     = 0
let g:lightline#bufferline#unnamed          = '[Untitled]'

function! LightlineLineinfo() abort
    if winwidth(0) < 86
        return ''
    endif
    let l:current_line = printf('%-3s', line('.'))
    let l:max_line = printf('%-3s', line('$'))
    let l:lineinfo = ' ' . l:current_line . '/' . l:max_line
    return l:lineinfo
endfunction
