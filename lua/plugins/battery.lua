return {
  {
    "justinhj/battery.nvim",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },

    opts = {
      update_rate_seconds = 60,
      show_status_when_no_battery = false,
      show_plugged_icon = false,
      show_unplugged_icon = true,
      show_percent = true,
      vertical_icons = false,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {
          function()
            return " " .. os.date("%R")
          end,
          function()
            return require("battery").get_status_line()
          end,
        },
      },
    },
  },
}
