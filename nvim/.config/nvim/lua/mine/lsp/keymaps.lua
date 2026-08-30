return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            {
              "<leader>cl",
              function()
                Snacks.picker.lsp_config()
              end,
              desc = "LSP Info",
            },

            {
              "<leader>cd",
              vim.diagnostic.open_float,
              desc = "Line Diagnostics",
            },

            {
              "<leader>cq",
              vim.diagnostic.setloclist,
              desc = "Diagnostics List",
            },

            {
              "<leader>ca",
              vim.lsp.buf.code_action,
              desc = "Code Action",
              mode = { "n", "x" },
              has = "codeAction",
            },

            {
              "<leader>cr",
              vim.lsp.buf.rename,
              desc = "Rename",
              has = "rename",
            },

            {
              "K",
              vim.lsp.buf.hover,
              desc = "Hover Documentation",
              has = "hover",
            },
          },
        },
      },
    },
  },
}
