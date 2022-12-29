-- Treesitter configuration

require('nvim-treesitter.configs').setup({
	highlight = { enable = true, additional_vim_regex_highlighting = false},
  -- We must manually specify which parsers to install
  markid = { enable = true },
	ensure_installed = {
    "bash",
    "c",
    "cpp",
    "cuda",
		"json",
    "julia",
		"lua",
    "python",
    "yaml",
    "typescript",
    "javascript",
    "rust"
	},
})
