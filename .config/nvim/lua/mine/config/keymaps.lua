local keymap = vim.keymap.set

-- Disable command history window triggers
keymap("n", "q:", "<Nop>", { silent = true, desc = "Disable command history" })
keymap("n", "q/", "<Nop>", { silent = true, desc = "Disable search history forward" })
keymap("n", "q?", "<Nop>", { silent = true, desc = "Disable search history backward" })
