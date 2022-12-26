lua << END
vim.cmd("colorscheme nordfox")
local palette = require('nightfox.palette').load('nordfox')
local Color = require("nightfox.lib.color")

-- local bg3 = Color.from_hex(palette.bg3)
-- print(vim.inspect(palette))
require('lualine').setup({
    sections = {
        lualine_a = {'mode', 'paste'},
        lualine_b = { 'filename'},
        --lualine_c = {'fileformat', 'filetype', 'coc#status'},
        lualine_c = {
            { 'diagnostics', 
               sources = {'coc'},
                }, 'fileformat', 'filetype', 'coc#status'
            },
        --lualine_c = {'coc#status'},
        lualine_x = {
            {
            'buffers',
            buffers_color ={
                active = { Color.from_hex(palette.green.base) },
                inactive = Color.from_hex(palette.fg1),
                }
            }
           },
        lualine_y = {'branch'},
        lualine_z = {'progress','location'},

    },
inactive_selection = {
    lualine_a={},
    lualine_b={'filename'},
    lualine_c={},
    lualine_x={'location'},
    lualine_y={},
    lualine_z={}
}
})
END
