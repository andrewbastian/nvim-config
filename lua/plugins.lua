-- Plugin definition and loading
-- local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd

-- Boostrap Packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
end

-- Load Packer
cmd([[packadd packer.nvim]])

-- Rerun PackerCompile everytime pluggins.lua is updated
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Initialize pluggins
return require('packer').startup(function(use)
  -- Let Packer manage itself
  use({ 'wbthomason/packer.nvim', opt = true })
  -- Undotree
  use "jiaoshijie/undotree"
  -- LSP server
  use 'williamboman/nvim-lsp-installer' -- Helper for installing most language servers
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use({
    'neovim/nvim-lspconfig',
    requires = { 'williamboman/nvim-lsp-installer', 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim' },
    config = function() require('plugins.lspconfig') end
  })
  use({
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require('plugins.null-ls') end
  })
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function() require("plugins.lspsaga") end
  })

  -- Autocomplete
  use({
    "hrsh7th/nvim-cmp",
    -- Sources for nvim-cmp
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      'onsails/lspkind-nvim'
    },
    config = function() require('plugins.cmp') end,
  })


  -- Treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    config = function() require('plugins.treesitter') end,
    run = ':TSUpdate'
  })

  -- Snippets
  use { "L3MON4D3/LuaSnip", config = function() require('plugins.snippets') end }
  use "rafamadriz/friendly-snippets"

  -- Signature help
  use "ray-x/lsp_signature.nvim"

  -- Telescope
  use({
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function() require('plugins.telescope') end,
  })

  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })

  -- bufferline
  use({
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.bufferline') end,
    event = 'BufWinEnter',
  })

  -- statusline
  use({
    'hoob3rt/lualine.nvim',
    config = function() require('plugins.lualine') end,
  })

  -- NvimTree
  use({
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.nvimtree') end, -- Must add this manually
  })

  -- Dashboard
  use({ 'glepnir/dashboard-nvim',
    config = function() require('plugins.dashboard-nvim') end,
  })

  -- git commands
  use 'tpope/vim-fugitive'

  -- Which Key
  use "folke/which-key.nvim"

  -- Gitsigns
  use({
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('plugins.gitsigns') end
  })
  -- Trouble(QuickFix)
  use({
    "folke/trouble.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = function() require("plugins.trouble") end
  })
  -- Formatting
  use 'tpope/vim-commentary'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'junegunn/vim-easy-align'
  use "lukas-reineke/lsp-format.nvim"
  use({
    'MunifTanjim/prettier.nvim',
    config = function()
      require("plugins.prettier")
    end
  })

  -- Python formatting
  use "EgZvor/vim-black"
  use 'jeetsukumaran/vim-python-indent-black'

  -- Python
  -- use 'heavenshell/vim-pydocstring'   -- Overwrites a keymap, need to fix.
  -- use 'bfredl/nvim-ipy'

  -- Markdown
  use 'godlygeek/tabular'
  use 'ellisonleao/glow.nvim'

  -- TOML Files
  use 'cespare/vim-toml'

  -- Poetry
  -- use({'petobens/poet-v',
  --   config = function()
  --     local path = vim.fn.stdpath('config')..'/lua/plugins/poet-v.vim'
  --     vim.cmd('source '..path)
  --   end
  -- })

  -- kitty config syntax-highlight
  use "fladson/vim-kitty"

  -- note taking with zettelkasten

  -- Xcode:
  use({
    'xbase-lab/xbase',
    run = 'make install', -- make free_space (not recommended, longer build time)
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "neovim/nvim-lspconfig"
    },
    config = function()
      require 'xbase'.setup({}) -- see default configuration bellow
    end
  })
  -- Themes
  use({
    'EdenEast/nightfox.nvim',
    config = function() require('plugins.nightfox') end
  }) -- https://github.com/EdenEast/nightfox.nvim#readme
  use 'marko-cerovac/material.nvim'
  use 'edluffy/hologram.nvim'
  use 'pappasam/nvim-repl'

  use({ 'David-Kunz/markid', function() require('plugins.markid') end }) -- https://github.com/David-Kunz/markid

  if packer_bootstrap then
    require('packer').sync()
  end
end)
