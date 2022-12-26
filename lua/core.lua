local opt = vim.opt
local g = vim.g

opt.syntax = true
opt.noerrorbells = true
opt.laststatus = 2
opt.tabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.nu = true
opt.nowrap = true
opt.smartcase = true
opt.noswapfile = true
opt.nobackup = true
opt.undodir="~/.vim/undodir"
opt.undofile = true
opt.incsearch = true
opt.colorcolumn=80
 --notimeout opt.for which-key
opt.notimeout = true

if ("termopt.icolors")     -- g.true colors
then
    opt.t_8f=[[\[[38;2;%lu;%lu;%lum]]
    opt.t_8b=[[\[[48;2;%lu;%lu;%lum]]
    opt.termguicolors = true
end

-- __Coc Settinopt.__
-- Set internal encodinopt.of vim, not needed on neovim, since coc.nvim using some
-- unicode characters in the file autoload/float.vim
opt.encoding="utf-8"

 --TextEdit miopt.t fail if hidden is not set.
opt.hidden = true

 --Some servers have issues with backup files, see #649.
opt.nobackup = true
opt.nowritebackup = true

 --Give more space for displayinopt.messages.
opt.cmdheight=2

 --Havinopt.longer updatetime (default is 4000 ms = 4 s) leads to noticeable
 --delays and poor user experience.
opt.updatetime=300

--" Don't pass messaopt.s to |ins-completion-menu|.
opt.shortmess="c"

--Tmux/NVIM truecolor fix
if ("termopt.icolors")     --set true colors
then
    opt.t_8f=[[\[[38;2;%lu;%lu;%lum]]
    opt.t_8b=[[\[[48;2;%lu;%lu;%lum]]
    opt.termguicolors = true
end
