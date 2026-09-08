return {
  { import = "lazyvim.plugins.extras.lang.dotnet" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        csharp_ls = function(_, opts)
          opts.on_attach = function(bufnr)
            -- Disable inlay hints ONLY for C#
            vim.lsp.inlay_hint.enable(false, { bufnr = bufnr })
          end
        end,
      },
    },
  },
}
