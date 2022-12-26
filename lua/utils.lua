function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
    map('n', shortcut, command)
end

function imap(shortcut, command)
    map('i', shortcut, command)
end

function vmap(shortcut, command)
    map('v', shortcut, command)
end
function xmap(shortcut, command)
    map('x', shortcut, command)
end

-- inspect something
-- Taken from https://github.com/jamestthompson3/vimConfig/blob/eeef4a8eeb5a24938f8a0969a35f69c78643fb66/lua/tt/nvim_utils.lua#L106
function inspect(item)
  print(vim.inspect(item))
end

local M = {}

function M.executable(name)
  if vim.fn.executable(name) > 0 then
    return true
  end

  return false
end

function M.may_create_dir()
  local fpath = vim.fn.expand('<afile>')
  local parent_dir = vim.fn.fnamemodify(fpath, ":p:h")
  local res = vim.fn.isdirectory(parent_dir)

  if res == 0 then
    vim.fn.mkdir(parent_dir, 'p')
  end
end

return M
