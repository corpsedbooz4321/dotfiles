local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General Autocmds Group
local general = augroup("GeneralSettings", { clear = true })

-- Highlight text on yank (copy)
autocmd("TextYankPost", {
  group = general,
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

-- Return to last cursor position when opening a file
autocmd("BufReadPost", {
  group = general,
  callback = function(args)
    local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
    local line_count = vim.api.nvim_buf_line_count(args.buf)
    if mark[1] > 0 and mark[1] <= line_count then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Automatically create missing directories when saving a file
autocmd("BufWritePre", {
  group = general,
  callback = function(event)
    if event.match:match("^%w%w+:[//|\\\\]") then
      return
    end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})

-- Close certain utility buffers easily with <q>
autocmd("FileType", {
  group = general,
  pattern = {
    "qf",
    "help",
    "man",
    "notify",
    "lspinfo",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "checkhealth",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- Auto-resize splits when the terminal window is resized
autocmd("VimResized", {
  group = general,
  callback = function()
    local current_tab = vim.fn.tabpagenr()
    vim.cmd("tabdo wincmd =")
    vim.cmd("tabnext " .. current_tab)
  end,
})

-- Turn off line numbers in terminal mode
autocmd("TermOpen", {
  group = general,
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
  end,
})
