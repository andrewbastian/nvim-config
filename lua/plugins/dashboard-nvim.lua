  local home = os.getenv('HOME')
  local db = require('dashboard')

  db.preview_command = 'cat | lolcat -F 0.3'
  db.preview_file_path = home .. '/.config/nvim/static/nvimpunk.cat'
  db.preview_file_height = 12
  db.preview_file_width = 90
  db.custom_center = {
      {icon = '  ',
      desc = 'Recently latest session                   ',
      shortcut = 'SPC s l',
      action ='SessionLoad'},
      {icon = '  ',
      desc = 'Recently opened files                     ',
      action =  'DashboardFindHistory',
      shortcut = 'SPC f h'},
      {icon = '  ',
      desc = 'Find  File                                ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='File Browser                               ',
      action =  'NvimTreeToggle',
      shortcut = 'SPC e'},
      {icon = '⎈  ',
      desc = 'TS repl                                   ',
      action = 'terminal repl ts',
      shortcut = 'SPC f w'},
      {icon = '  ',
      desc = 'Find  word                                ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'},
      {icon = '  ',
      desc = 'Open Personal dotfiles                    ',
      action = 'Telescope dotfiles path=' .. home ..'/.config',
      shortcut = 'SPC f d'},
    }
    db.custom_footer = {
            icon = '🤘',
          }

