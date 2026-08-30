return {
  -- Core Mason UI/Engine
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    opts = {
      ui = { border = "rounded" },
    },
  },

  -- Automatic installer for LSPs
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
        "cssls",
        "vtsls",
      },
    },
  },

  -- Automatic installer for DAP, Formatters, & Linters
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        -- Formatters / Linters
        "stylua",
        "ruff",
        "shfmt",
        "prettierd",

        -- Debug Adapters (DAP)
        "codelldb",
        "debugpy",
      },
    },
  },
}
