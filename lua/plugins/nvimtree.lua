-- NVIM tree

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
      })

