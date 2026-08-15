-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.softtabstop = 4
-- vim.opt.expandtab = true

-- -- --vim.cmd("set listchars=space:·,tab:->\n")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      require("mini.starter").open()
    end
  end,
})
