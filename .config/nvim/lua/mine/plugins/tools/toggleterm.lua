return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    -- Automatically set working directory to current active buffer
    dir = "buffer",
    open_mapping = [[<C-/>]],
    direction = "horizontal", -- Options: 'horizontal', 'vertical', 'float', 'tab'
    shade_terminals = true,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    close_on_exit = true,
    float_opts = {
      border = "curved",
      winblend = 0,
    },
  },
  keys = {
    { "<C-/>", "<cmd>ToggleTerm<cr>", mode = { "n", "t" }, desc = "Toggle Terminal" },
    { "<C-_>", "<cmd>ToggleTerm<cr>", mode = { "n", "t" }, desc = "Toggle Terminal" },
  },
}
