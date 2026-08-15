-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Delete Old Keybinds
vim.keymap.del("n", "<Down>")
vim.keymap.del("n", "<Up>")

-- New Keymaps
vim.keymap.set("n", "<C-j>", "<C-d>")
vim.keymap.set("n", "<C-k>", "<C-u>")

local switch = false
local function toggle_space()
  if switch then
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
    vim.opt.expandtab = true
    print("Four Space Indentation")
  else
    vim.opt.expandtab = true
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    print("Two Space Indentation")
  end
  switch = not switch
end
vim.keymap.set("n", "<leader>[", toggle_space, { desc = "Toggle indentation size" })
