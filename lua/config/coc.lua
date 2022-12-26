local utils = require('utils.lua')
vim.cmd([[
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
]])

-- Make <CR> auto-select the first completion item and notify oc.nvim to
-- format on entr, <cr> could be remapped by other vim plugin

  utils.imap( '<silent><expr>', '<CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"')
  utils.imap( <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
 

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
  -- remap for complete to use tab and <cr>
  utils.imap( <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
  utils.imap( <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
  utils.imap( <silent><expr> <c-space> coc#refresh()

  hi CocSearch ctermfg=12 guifg=#18A3FF
  hi CocMenuSel ctermbg=109 guibg=#13354A

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

-- GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

-- Use K to show documentation in preview window.
utils.nmap( <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

-- Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

-- Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

-- Formatting selected code.
utils.xmap( <leader>f <Plug>(coc-format-selected)
utils.vmap( <leader>f <Plug>(coc-format-selected)

nmap C-p <Plug>(coc-format-selected)
-- Should fix Formatting error in markdown files
let g:coc_filetype_map = {'pandoc': 'markdown'}
augroup mygroup
  autocmd!
  -- Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  -- Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
utils.xmap( <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

-- Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac <Plug>(coc-codeaction)
utils.nmap( <silent> <space>ac  :<C-u>CocAction<cr>
"nmap <leader>ac <Plug>(coc-codeaction)
-- Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)

-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
utils.xmap( if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
utils.xmap( af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
utils.xmap( ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
utils.xmap( ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

-- Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  utils.nmap( <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>")
  utils.nmap( <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>")
  utils.imap( <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>")
  utils.imap( <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>")
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>")
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>")
endif

-- Use CTRL-S for selections ranges.
-- Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
utils.xmap( <silent> <C-s> <Plug>(coc-range-select)

-- Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

-- Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

-- Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

--init Mappings for CoCList
-- Show all diagnostics.
utils.nmap( <silent> <space>ld  :<C-u>CocList diagnostics<cr>
-- Manage extensions.
utils.nmap( <silent> <space>le  :<C-u>CocList extensions<cr>
-- Show commands.
utils.nmap( <silent> <space>lc  :<C-u>CocList commands<cr>
-- Find symbol of current document.
utils.nmap( <silent> <space>lo  :<C-u>CocList outline<cr>
-- Search workspace symbols.
utils.nmap( <silent> <space>ls  :<C-u>CocList snippets<cr>
-- Search workspace symbols.
utils.nmap( <silent> <space>li  :<C-u>CocList -I symbols<cr>
-- Do default action for next item.
utils.nmap( <silent> <space>lj  :<C-u>CocNext<CR>
-- Do default action for previous item.
utils.nmap( <silent> <space>lk  :<C-u>CocPrev<CR>
-- Resume latest coc list.
utils.nmap( <silent> <space>lr  :<C-u>CocListResume<CR>

-- Coc Snippet
-- Use <C-l> for trigger snippet expand.
utils.imap ( '<C-l>', '<Plug>(coc-snippets-expand)')

-- Use <C-j> for select text for visual placeholder of snippet.
utils.vmap( <C-j> <Plug>(coc-snippets-select)

-- Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

-- Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

-- Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

-- Use <C-a> to toggle auto-pairs
imap <C-a> call CocAction('toggleExtention', 'coc-pairs') 

-- Use <leader>x for convert visual selected code to snippet
utils.xmap( <leader>x  <Plug>(coc-convert-snippet)

-- CocCommands
"utils.nmap( <space>e :CocCommand explorer<CR>

-- CocSearch
utils.nmap( <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
