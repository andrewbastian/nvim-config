lua << EOF
require('telescope').load_extension('vimwiki')
EOF

nnoremap <leader>vw <cmd> Telescope vimwiki<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
