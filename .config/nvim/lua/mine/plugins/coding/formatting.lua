return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      c = { "clang_format" },
      c_sharp = { "csharpier" },
      cs = { "csharpier" },
      json = { "prettierd" },
      lua = { "stylua" },
      markdown = { "prettierd" },
      python = { "ruff_format", "ruff_organize_imports" },
    },
  },
}
