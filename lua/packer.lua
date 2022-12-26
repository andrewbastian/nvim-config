local utils =require("utils.lua")
local fn = vim.fn
vim.g.package_home = fn.stdpath("data") .. "/site/pack/packer/"
local packer_install_dir = vim.g.package_home .. "/opt/packer.nvim"

local plug_url_format = ""
if vim.g.is_linux then
  plug_url_format = "https://hub.fastgit.xyz/%s"
else
  plug_url_format = "https://github.com/%s"
end

local packer_repo = string.format(plug_url_format, "wbthomason/packer.nvim")
local install_cmd = string.format("10split |term git clone --depth=1 %s %s", packer_repo, packer_install_dir)

-- Auto-install packer in case it hasn't been installed.
if fn.glob(packer_install_dir) == "" then
  vim.api.nvim_echo({ { "Installing packer.nvim", "Type" } }, true, {})
  vim.cmd(install_cmd)
end

-- Load packer.nvim
vim.cmd("packadd packer.nvim")
local util = require('packer.util')

require("packer").startup({
  function(use)
    -- it is recommened to put impatient.nvim before any other plugins
    use {'lewis6991/impatient.nvim', config = [[require('impatient')]]}

    use({"wbthomason/packer.nvim", opt = true})

    use({"onsails/lspkind-nvim", event = "VimEnter"})

    if vim.g.is_mac then
    --  Treesitter
      use({ "nvim-treesitter/nvim-treesitter", event = 'BufEnter', run = ":TSUpdate", config = [[require('config.treesitter')]] })
      use { 'nvim-treesitter/playground' }
    end

    use {'kyazdani42/nvim-web-devicons', event = 'VimEnter'}
    -- ________________________________________________
use { 'glepnir/dashboard-nvim' }  -- https://github.com/glepnir/dashboard-nvim#readme
use { 'edluffy/hologram.nvim' }
use { 'EdenEast/nightfox.nvim' }  -- https://github.com/EdenEast/nightfox.nvim#readme
use { 'norcalli/nvim-colorizer.lua' }  -- https://github.com/norcalli/nvim-colorizer.lua
--  FileExplore
use { 'kyazdani42/nvim-web-devicons' }  -- for file icons
--  Nvim-DAP
use { 'mfussenegger/nvim-dap' }  -- https://github.com/mfussenegger/nvim-dap
use { 'mxsdev/nvim-dap-vscode-js' }  -- https://github.com/mxsdev/nvim-dap-vscode-js
--  REPL
use { 'pappasam/nvim-repl' }  -- https://github.com/pappasam/nvim-repl#readme
-- COC
use { 'neoclide/coc.nvim', event= 'VimEnter', branch= 'master', run= 'yarn install --frozen-lockfile', config=[[require('config.coc')]]} -- https://github.com/neoclide/coc.nvim#readme

-- Undotree
use { 'mbbill/undotree' }  -- https://github.com/mbbill/undotree#readme

--  Autopairs
use { 'alvan/vim-closetag' }  -- https://github.com/alvan/vim-closetag#readme
use { 'tpope/vim-surround' }  -- https://github.com/tpope/vim-surround#readme
use { 'tpope/vim-repeat' }  -- https://github.com/tpope/vim-repeat
--

-- Syntax highlighting
use { 'yuezk/vim-js' }  -- https://github.com/yuezk/vim-js#readme
use { 'maxmellon/vim-jsx-pretty' }  -- https://github.com/MaxMEllon/vim-jsx-pretty#readme
use { 'leafgarland/typescript-vim' }  -- https://github.com/leafgarland/typescript-vim#readme
use { 'vim-pandoc/vim-pandoc-syntax' }  -- https://github.com/vim-pandoc/vim-pandoc-syntax#readme
use { 'vim-pandoc/vim-pandoc' }  -- https://github.com/vim-pandoc/vim-pandoc#readme

-- Markdown
use { 'godlygeek/tabular' }
use { 'preservim/vim-markdown' }
use { 'godlygeek/tabular' }

-- Snippets
use { 'SirVer/ultisnips' }  -- https://github.com/SirVer/ultisnips#readme
use { 'honza/vim-snippets' }  -- https://github.com/honza/vim-snippets#readme
use { 'mlaursen/vim-react-snippets' }  -- https://github.com/mlaursen/vim-react-snippets#readme
--

-- Floaterm
use { 'voldikss/vim-floaterm' }  -- https://github.com/voldikss/vim-floaterm
use { 'windwp/vim-floaterm-repl' }  -- https://github.com/windwp/vim-floaterm-repl

-- Fuzzy & Grep
use { 'jremmen/vim-ripgrep' }  -- https://github.com/jremmen/vim-ripgrep#readme
use { 'nvim-lua/plenary.nvim' }  -- https://github.com/nvim-lua/plenary.nvim#readme
use { 'nvim-telescope/telescope.nvim' }  -- https://github.com/nvim-telescope/telescope.nvim#readme
--

-- GhostText
-- Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'} " -- https://github.com/subnut/nvim-ghost.nvim#readme
use { 'raghur/vim-ghost', run= ':GhostInstall'}

-- LineCommenter
use { 'preservim/nerdcommenter' }  -- https://github.com/preservim/nerdcommenter#readme

-- GIT
use { 'tpope/vim-fugitive' }  -- https://github.com/tpope/vim-fugitivev#readme

-- Emmet
use { 'mattn/emmet-vim' }  -- https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL

-- Vim-Manual
use { 'vim-utils/vim-man' }  -- https://github.com/vim-utils/vim-man

-- Goyo+
use { 'junegunn/goyo.vim' }  -- https://github.com/junegunn/goyo#readme
use { 'junegunn/limelight.vim' }  -- https://github.com/junegunn/limelight#readme

-- Which-key+
--[[use { 'folke/which-key.nvim' }  -- https://github.com/folke/which-key#readme]]
--"Plug 'mrjones2014/legendary.nvim' " -- https://github.com/mrjones2014/legendary.nvim#readme
use { 'stevearc/dressing.nvim' }  -- https://github.com/stevearc/dressing.nvim#readme




-- ____________
    use {
      'nvim-lualine/lualine.nvim',
      event = 'VimEnter',
      config = [[require('config.statusline')]]
    }


    -- fancy start screen
    --[[use { 'goolord/alpha-nvim', event = 'VimEnter', config = [[require('config.alpha-nvim')<] }]]

    --[[use({
      "lukas-reineke/indent-blankline.nvim",
      event = 'VimEnter',
      config = [[require('config.indent-blankline')<]
    })]]

    -- Highlight URLs inside vim
    --[[use({"itchyny/vim-highlighturl", event = "VimEnter"})]]

    -- notification plugin
    --[[use({
      "rcarriga/nvim-notify",
      event = "BufEnter",
      config = function()
        vim.defer_fn(function() require('config.nvim-notify') end, 2000)
      end
    })]]

    -- showing keybindings
    use {"folke/which-key.nvim",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function() require('config.which-key') end, 2000)
    end
    }

    -- show and trim trailing whitespaces
    --[[use {'jdhao/whitespace.nvim', event = 'VimEnter'}]]

    -- file explorer
    use {
      'kyazdani42/nvim-tree.lua',
      requires = { 'kyazdani42/nvim-web-devicons' },
      keys = {{'n', '<space>s'}, },
      config = [[require('config.nvim-tree')]]
    }
  end,
  config = {
    max_jobs = 16,
    compile_path = util.join_paths(vim.fn.stdpath('config'), 'lua', 'packer_compiled.lua'),
    git = {
      default_url_format = plug_url_format,
    },
  },
})

local status, _ = pcall(require, 'packer_compiled')
if not status then
  vim.notify("Error requiring packer_compiled.lua: run PackerSync to fix!")
end
