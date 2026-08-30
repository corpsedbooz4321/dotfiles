return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "c",
        "cpp",
        "cmake",
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "markdown",
        "markdown_inline",
        "python",
        "json",
        "yaml",
        "toml",
        "regex",
      })
    end,
  },
}
