return {
  { import = "lazyvim.plugins.extras.lang.dotnet" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "c_sharp" },
    },
  },
}
