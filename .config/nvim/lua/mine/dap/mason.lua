return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = { "mason-org/mason.nvim", "mfussenegger/nvim-dap" },
    opts = {
      handlers = {
        python = function() end,
        codelldb = function() end,
      },
      ensure_installed = {
        "python",
        "codelldb",
      },
    },
  },
}
