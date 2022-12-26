syntax on

let g:coc_filetype_map = { 'markdown.mdx': 'mdx' }

autocmd BufEnter *.mdx setlocal filetype=markdown.mdx

command! -nargs=0 Prettier :CocCommand prettier.formatFile
set noerrorbells
set laststatus=2

" for vimwiki:
set nocompatible
filetype plugin on

"set background=dark
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
" notimeout set for which-key
set notimeout

if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif
"if $TERM =~# '256color' && ( $TERM =~# '^screen'  || $TERM =~# '^tmux' )
"    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"    set termguicolors
"endif
" __Coc Settings__
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
"if has("nvim-0.5.0") || has("patch-8.1.1564")
"  " Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif

"__Highlight Settings__
"highlight ColorColumn ctermbg=3
"highlight Normal guibg=NONE ctermbg=NONE

"Tmux/NVIM truecolor fix
if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

" set runtimepath^=/Users/andrewbastian/.config/coc/my-extensionz/coc-mdx-lint
