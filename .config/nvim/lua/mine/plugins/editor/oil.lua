return {
  "stevearc/oil.nvim",
  opts = {
    float = {
      -- Padding around the floating window
      padding = 2,
      max_width = 90,
      max_height = 0,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    -- Use oil.toggle_float instead of oil.open
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
      desc = "Open Oil floating window",
    },
  },
}
