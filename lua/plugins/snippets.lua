-- LuaSnip

require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip').filetype_extend("python", { 'pytorch' })
require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require('luasnip').filetype_extend("javascript", { "html" })
