-- Keymaps are automatically loaded on the VeryLazy event
vim.keymap.set("n", "<leader>tt", function()
  Snacks.terminal.toggle()
end, { desc = "Toogle Terminal" })
