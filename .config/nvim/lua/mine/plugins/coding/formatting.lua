return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format", "ruff_organize_imports" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },

      -- Add missing formatters here:
      xml = { "lemminx" }, -- Uses Lemminx LSP / formatting
      yaml = { "prettierd" }, -- Uses prettierd for YAML
      json = { "prettierd" },
      c_sharp = { "csharpier" }, -- C# formatter (install via Mason)
      sh = { "shfmt" },
    },

    -- Optional: Auto-format on save
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
