"autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
" Use formatprg when available
let g:neoformat_try_formatprg = 1

let g:mapleader = " "
let g:maplocalleader = ','

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:ctrlp_use_caching = 0

let g:ctrlp_use_caching = 0
 
" esc in insert mode
inoremap kj <esc>

inoremap ∆ <down>
inoremap ˚ <up>
inoremap ¬ <right>
inoremap ˙ <left>
nnoremap <leader>P :Prettier<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>ut<CR> :UndotreeShow<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader>so<CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
" Window nav
nnoremap <Leader><left> <C-w><left>
nnoremap <Leader><right> <C-w><right>
nnoremap <Leader><up> <C-w><up>
nnoremap <Leader><down> <C-w><down>

" Buffer Navigation
nnoremap <Leader>3 :b#<CR>      " previous buffer
nnoremap <Leader>n :bn<CR>      " next buffer
nnoremap Q :bd!<CR>             " close buffer
nnoremap <Leader>, :buffers<CR> " browse buffers

" ESC turns off seach highlight
noremap <Esc> :noh<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vnoremap <leader>p "_dP

" Yank to clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


