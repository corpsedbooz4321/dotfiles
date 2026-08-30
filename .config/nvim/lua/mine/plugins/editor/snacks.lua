return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>e",
        function()
          Snacks.explorer({ cwd = true }) -- CWD
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
