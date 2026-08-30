return {
  {
    "barrett-ruth/live-server.nvim",
    config = function()
      vim.g.live_server = {
        port = 8080,
        browser = true,
      }

      vim.keymap.set("n", "<leader>h;", "<cmd>LiveServerToggle<cr>", {
        desc = "Toggle Live Server",
      })
    end,
  },
}
