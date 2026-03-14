-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local o = vim.opt
o.number = true           -- Show absolute line number on current line
o.relativenumber = true   -- Show relative line numbers
o.cursorline = true       -- Highlight current line
o.signcolumn = "yes"      -- Always show sign column (for breakpoints, git, etc.)
o.numberwidth = 4         -- Width of line number column
