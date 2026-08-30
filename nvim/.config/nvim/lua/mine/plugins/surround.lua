return {
  -- Other editor plugins (e.g., WhichKey, Comment.nvim, Flash, etc.)

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
}
