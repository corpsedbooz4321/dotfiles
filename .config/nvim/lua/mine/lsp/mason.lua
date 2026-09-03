return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    opts = {
      ui = { border = "rounded" },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      automatic_installation = true,
      ensure_installed = {
        "clangd",
        "cssls",
        "csharp_ls",
        "html",
        "jsonls",
        "lua_ls",
        "pyright",
        "ts_ls",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "clang-format",
        "csharpier",
        "prettierd",
        "ruff",
        "shfmt",
        "standardjs",
        "stylua",
      },
    },
  },
}
