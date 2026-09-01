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
        "bashls",
        "clangd",
        "cssls",
        "csharp_ls",
        "html",
        "jsonls",
        "lemminx",
        "lua_ls",
        "marksman",
        "pyright",
        "ts_ls",
        "yamlls",
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
