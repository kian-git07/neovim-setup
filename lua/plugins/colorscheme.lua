
return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "rose-pine/neovim", name = "rose-pine", priority = 1000 },
    { "sainnhe/gruvbox-material", name = "gruvbox-material", priority = 1000 },
    { "Mofiqul/dracula.nvim", name = "dracula", priority = 1000 },
    -- This can be commented out
    {
        "navarasu/onedark.nvim",
        version = "v0.1.0", -- Pin to legacy version
        priority = 1000,
        config = function()
            require('onedark').setup {
            style = 'darker'
        }
            require('onedark').load()
        end
    -- This is where it stops
    }
        -- Configure LazyVim to load gruvbox
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "rose-pine",
    --     },
    -- },
}
