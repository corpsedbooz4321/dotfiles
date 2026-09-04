return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        replace_netrw = false,
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            auto_open = false,
          },
        },
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          Snacks.explorer({ cwd = false }) -- CWD
        end,
        desc = "Explorer (cwd)",
      },
      {
        "<leader>E",
        function()
          Snacks.explorer() -- Project Root
        end,
        desc = "Explorer (root)",
      },
    },
  },
}
