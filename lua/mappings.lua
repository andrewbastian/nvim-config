local utils = require('utils.lua')

vim.g.mapleader = " "
vim.g.maplocalleader = ","

utils.imap("kj", "<esc>")
utils.imap("∆", "<down>" )
utils.imap ( "˚", "<up>" )
utils.imap ( "¬", "<right>" )
utils.imap ( "˙", "<left>" )
utils.nmap ( "<leader>P", ":Format<CR>" )
utils.nmap ( "<leader>ghw", ":h <C-R>=expand('<cword>')<CR><CR>" )
utils.nmap ( "<leader>bs", "/<C-R>=escape(expand('<cWORD>'), '/')<CR><CR>" )
utils.nmap ( "<leader>ut<CR>", ":UndotreeShow<CR>" )
utils.nmap ( "<leader>pv", ":Ex<CR>" )
utils.nmap ( "<Leader>so<CR>", ":so ~/.config/nvim/init.vim<CR>" )
utils.nmap ( "<Leader>+", ":vertical resize +5<CR>" )
utils.nmap ( "<Leader>-", ":vertical resize -5<CR>" )
utils.nmap ( "<Leader>rp", ":resize 100<CR>" )
 --Window nav
utils.nmap ( "<Leader><left>", "<C-w><left>" )
utils.nmap ( "<Leader><right>", "<C-w><right>" )
utils.nmap ( "<Leader><up>", "<C-w><up>" )
utils.nmap ( "<Leader><down>", "<C-w><down>" )

 --Buffer Navigation
utils.nmap ( "<Leader>3", ":b#<CR>" )
utils.nmap ( "<Leader>n", ":bn<CR>" )
utils.nmap ( "Q", ":bd!<CR>" )
utils.nmap ( "<Leader>,", ":buffers<CR>" )

utils.vmap ( 'J', [[ :m '>+1<CR>gv=gv ]] )
utils.vmap ( 'K', ":m '<-2<CR>gv=gv" )

utils.vmap ( "<leader>p", '"dP' )

-- Yank to clipboard
utils.nmap ( "<leader>y", '"+y' )
utils.vmap ( "<leader>y", '"+y' )
utils.nmap ( "<leader>Y", 'gg"+yG' )

utils.nmap ( "<leader>d", '"d' )
utils.vmap ( "<leader>d", '"d' )

utils ( "<leader>sp", ":call <SID>SynStack()<CR>")
--[[function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc]]



