nnoremap <leader>e :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

"set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
"highlight NvimTreeFolderIcon guibg=#81a1c1 guifg=#232831
lua << EOF
require'nvim-tree'.setup( {
    renderer = {
            highlight_git = true,
            highlight_opened_files = "icon",
            root_folder_modifier = ":~",
            add_trailing = true,
            group_empty = true,
            icons = {
                    padding = " ",
                    show = {
                            file= true,
                            folder= true,
                            git=false,
                            folder_arrow = true,
                           },
                       glyphs = {
                             default= "",
                             symlink= "",
                             git= {
                               unstaged= "✗",
                               staged= "✓",
                               unmerged= "",
                               renamed= "➜",
                               untracked= "★",
                               deleted= "",
                               ignored= "◌"
                               },
                             folder= {
                               arrow_open= "",
                               arrow_closed= "",
                               default= "",
                               open= "",
                               empty= "",
                               empty_open= "",
                               symlink= "",
                               symlink_open= "",
                               },
                          },
              },
          },
    respect_buf_cwd = true,
    create_in_closed_folder = true,
      })
EOF
