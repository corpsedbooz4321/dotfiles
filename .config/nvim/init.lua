-- bootstrap lazy.nvim, LazyVim and your plugins
require("mine.lazy.lazy")

-- Keep Neovim rooted to the directory it was launched from so Snacks/Telescope
-- do not jump to the parent git repo or home directory.
vim.opt.autochdir = true
vim.g.root_spec = { "cwd" }

require("mine.config.keymaps")
require("mine.lsp")
