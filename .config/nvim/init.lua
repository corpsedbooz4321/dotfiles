-- bootstrap lazy.nvim, LazyVim and your plugins
require("mine.lazy.lazy")

--disable the inlaly hints
vim.lsp.inlay_hint.enable = function() end

require("mine.config.keymaps")
require("mine.config.options")
require("mine.lsp")
