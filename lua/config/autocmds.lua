-- lua/cfg/autocmds.lua

-- Create a group so we can clear them easily later if needed
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local indent_group = augroup("SetIndentation", { clear = true })

-- Go
autocmd("FileType", {
  group = indent_group,
  pattern = "go",
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = false
  end
})

-- Lua
autocmd("FileType", {
  group = indent_group,
  pattern = "lua",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
  end
})

