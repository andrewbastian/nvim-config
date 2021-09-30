" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
let g:lightline = {
	\ 'colorscheme': 'elly',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filenamefromroot', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ], ['gitbranch'], ['percent','filetype']]
	\ },
	\ 'component_function': {
    \   'filenamefromroot': 'LightlineFilename',
    \   'gitbranch': 'FugitiveHead',
	\   'cocstatus': 'coc#status',
	\ },
	\ }
" Display filepath from root of Git dir and name in lightline
function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

