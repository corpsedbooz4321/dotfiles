return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "standard" },
        javascriptreact = { "standard" },
        typescript = { "standard" },
        typescriptreact = { "standard" },
      },
      formatters = {
        standard = {
          command = "standard",
          args = { "--fix" },
          stdin = false,
        },
      },
    },
  },
}
