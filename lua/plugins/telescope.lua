return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>/", false }, -- disable old
      { "<C-g>", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    },
  },
}
