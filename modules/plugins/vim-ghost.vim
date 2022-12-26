let g:ghost_darwin_app = 'kitty'

let g:ghost_port = 4040

augroup ghost
    au!
    autocmd BufNewFile,BufRead *replit.com* set filetype=typescript
    autocmd BufNewFile,BufRead *stackoverflow.com* set filetype=markdown
augroup END

"function! s:SetupGhostBuffer()
"    if match(expand("%:a"), '\v/ghost-(replit)\.com-')
"        set ft=typescript
"    endif
"endfunction

"augroup vim-ghost
"    au!
"    au User vim-ghost#connected call s:SetupGhostBuffer()
"augroup END
