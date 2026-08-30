return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {},
        clangd = {
          mason = false,
          cmd = { "clangd" },
        },
        pyright = {},
        json = {},
        cssls = {},
        ts_ls = {},
        csharp_ls = {},
        lemminx = {},
      },
    },
  },
}
