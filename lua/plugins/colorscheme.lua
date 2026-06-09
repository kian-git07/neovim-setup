return {
  { "catppuccin/nvim",          name = "catppuccin",       priority = 1000 },
  { "rose-pine/neovim",         name = "rose-pine",        priority = 1000 },
  { "sainnhe/gruvbox-material", name = "gruvbox-material", priority = 1000 },
  { "Mofiqul/dracula.nvim",     name = "dracula",          priority = 1000 },
  -- This can be commented out

  -- -- ####################### One Dark ########################################
  {
    "navarasu/onedark.nvim",
    --version = "v0.1.0", -- Pin to legacy version
    priority = 1000,
    config = function()
      local onedark = require("onedark")
      local transparent_enabled = true
      local function apply_theme()
        onedark.setup({
          transparent = transparent_enabled,
          styles = {
            sidebars = transparent_enabled and "transparent" or "dark",
            floats = transparent_enabled and "transparent" or "dark"
          },
        })
        onedark.load()
      end
      apply_theme()

      local function toggle_transparency()
        transparent_enabled = not transparent_enabled
        apply_theme()
      end
      vim.keymap.set("n", "<leader>]", toggle_transparency, { desc = "Toggle transparency" })
    end
  },
  -- ######################## Rose Pine ######################################
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   priority = 1000,     -- make sure it loads before other plugins
  --   config = function()
  --     require("rose-pine").setup({
  --       variant = "main",                  -- auto, main, moon, or dawn
  --       dark_variant = "main",
  --       disable_background = true,         -- this is key for transparency
  --
  --       styles = {
  --         transparency = true,           -- ensures background is transparent
  --       },
  --
  --       highlight_groups = {
  --         -- force full transparency on common groups
  --         Normal = { bg = "none" },
  --         NormalFloat = { bg = "none" },
  --         SignColumn = { bg = "none" },
  --         EndOfBuffer = { bg = "none" },
  --       },
  --     })
  --
  --     vim.cmd("colorscheme rose-pine")
  --   end,
  -- },
  -- -- -- ######################## Catppuccin ######################################
  -- {
  --     "catppuccin/nvim",
  --     name = "catppuccin",
  --     priority = 1000,
  --     config = function()
  --         require("catppuccin").setup({
  --             transparent_background = true,
  --             term_colors = true,
  --             styles = {
  --                 comments = { "italic" },
  --             },
  --             custom_highlights = function()
  --                 return {
  --                     Normal = { bg = "none" },
  --                     NormalFloat = { bg = "none" },
  --                     SignColumn = { bg = "none" },
  --                     EndOfBuffer = { bg = "none" },
  --                 }
  --             end,
  --         })
  --     end,
  -- },
  -- ######################## GruvBox #########################################
  -- {
  --     "sainnhe/gruvbox-material",
  --     name = "gruvbox-material",
  --     priority = 1000,
  --     config = function()
  --         vim.g.gruvbox_material_enable_italic = true
  --         vim.g.gruvbox_material_background = "medium"
  --         vim.g.gruvbox_material_transparent_background = 2 -- 2 = fully transparent
  --
  --         -- force transparency
  --         vim.cmd([[
  --     highlight Normal guibg=NONE ctermbg=NONE
  --     highlight NormalFloat guibg=NONE ctermbg=NONE
  --     highlight SignColumn guibg=NONE ctermbg=NONE
  --     highlight EndOfBuffer guibg=NONE ctermbg=NONE
  --   ]])
  --     end,
  -- },
  -- ######################## Dracula #########################################
  --     {
  --         "Mofiqul/dracula.nvim",
  --         name = "dracula",
  --         priority = 1000,
  --         config = function()
  --             require("dracula").setup({
  --                 transparent_bg = true,
  --             })
  --
  --             -- reinforce transparency
  --             vim.cmd([[
  --         highlight Normal guibg=NONE ctermbg=NONE
  --         highlight NormalFloat guibg=NONE ctermbg=NONE
  --         highlight SignColumn guibg=NONE ctermbg=NONE
  --         highlight EndOfBuffer guibg=NONE ctermbg=NONE
  --       ]])
  --         end,
  --     },
}
