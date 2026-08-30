return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        python = { "ruff_organize_imports", "ruff_format" },

        css = { "prettierd", "prettier" },
        scss = { "prettierd", "prettier" },
        html = { "prettierd", "prettier" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
      },
    },
  },
}
