"THEME
"Plug 'ulwlu/elly.vim' " -- https://github.com/ulwlu/elly.vim#readme
Plug 'glepnir/dashboard-nvim' " -- https://github.com/glepnir/dashboard-nvim#readme
Plug 'edluffy/hologram.nvim'
Plug 'EdenEast/nightfox.nvim' " -- https://github.com/EdenEast/nightfox.nvim#readme
Plug 'norcalli/nvim-colorizer.lua' " -- https://github.com/norcalli/nvim-colorizer.lua
"Lualine
Plug 'nvim-lualine/lualine.nvim' " -- https://github.com/nvim-lualine/lualine.nvim#readme 
" FileExplore
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " -- https://github.com/nvim-treesitter/nvim-treesitter#readme
Plug 'nvim-treesitter/playground'
Plug 'David-Kunz/markid' " -- https://github.com/David-Kunz/markid
" Nvim-DAP
Plug 'mfussenegger/nvim-dap' " -- https://github.com/mfussenegger/nvim-dap
Plug 'mxsdev/nvim-dap-vscode-js' " -- https://github.com/mxsdev/nvim-dap-vscode-js
" REPL
Plug 'pappasam/nvim-repl' " -- https://github.com/pappasam/nvim-repl#readme
"COC
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} " -- https://github.com/neoclide/coc.nvim#readme
Plug 'mhartington/formatter.nvim' " --https://github.com/mhartington/formatter.nvim

"Undotree
Plug 'mbbill/undotree' " -- https://github.com/mbbill/undotree#readme

"{{ Autopairs
Plug 'alvan/vim-closetag' " -- https://github.com/alvan/vim-closetag#readme
Plug 'tpope/vim-surround' " -- https://github.com/tpope/vim-surround#readme
Plug 'tpope/vim-repeat' " -- https://github.com/tpope/vim-repeat
"}}

"Syntax highlighting
Plug 'yuezk/vim-js' " -- https://github.com/yuezk/vim-js#readme
Plug 'maxmellon/vim-jsx-pretty' " -- https://github.com/MaxMEllon/vim-jsx-pretty#readme
Plug 'leafgarland/typescript-vim' " -- https://github.com/leafgarland/typescript-vim#readme
"Plug 'vim-pandoc/vim-pandoc-syntax' " -- https://github.com/vim-pandoc/vim-pandoc-syntax#readme
"Plug 'vim-pandoc/vim-pandoc' " -- https://github.com/vim-pandoc/vim-pandoc#readme

"Markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

"Plug 'edkolev/tmuxline.vim' " -- https://github.com/edkolev/tmuxline.vim#readme
Plug 'aserowy/tmux.nvim' " -- https://github.com/edkolev/tmuxline.vim#readme

"{{Snippets
Plug 'SirVer/ultisnips' " -- https://github.com/SirVer/ultisnips#readme
Plug 'honza/vim-snippets' " -- https://github.com/honza/vim-snippets#readme
Plug 'mlaursen/vim-react-snippets' " -- https://github.com/mlaursen/vim-react-snippets#readme
"}}

"Floaterm
Plug 'voldikss/vim-floaterm' " -- https://github.com/voldikss/vim-floaterm
Plug 'windwp/vim-floaterm-repl' " -- https://github.com/windwp/vim-floaterm-repl

"{{Fuzzy & Grep
Plug 'jremmen/vim-ripgrep' " -- https://github.com/jremmen/vim-ripgrep#readme
Plug 'nvim-lua/plenary.nvim' " -- https://github.com/nvim-lua/plenary.nvim#readme
Plug 'nvim-telescope/telescope.nvim' " -- https://github.com/nvim-telescope/telescope.nvim#readme
"}}

"GhostText
"Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'} " -- https://github.com/subnut/nvim-ghost.nvim#readme
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}

"LineCommenter
Plug 'preservim/nerdcommenter' " -- https://github.com/preservim/nerdcommenter#readme

"GIT
Plug 'tpope/vim-fugitive' " -- https://github.com/tpope/vim-fugitivev#readme

"Emmet
Plug 'mattn/emmet-vim' " -- https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL

"Vim-Manual
Plug 'vim-utils/vim-man' " -- https://github.com/vim-utils/vim-man

"Goyo+
Plug 'junegunn/goyo.vim' " -- https://github.com/junegunn/goyo#readme
Plug 'junegunn/limelight.vim' " -- https://github.com/junegunn/limelight#readme

"Which-key+
Plug 'folke/which-key.nvim' " -- https://github.com/folke/which-key#readme
"Plug 'mrjones2014/legendary.nvim' " -- https://github.com/mrjones2014/legendary.nvim#readme
Plug 'stevearc/dressing.nvim' " -- https://github.com/stevearc/dressing.nvim#readme

"MDX syntax
"Plug 'andrewbastian/vim-mdx-js'
"
"Vim Wiki

Plug 'vimwiki/vimwiki' " --
Plug 'ElPiloto/telescope-vimwiki.nvim'
Plug 'jakewvincent/mkdnflow.nvim'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
