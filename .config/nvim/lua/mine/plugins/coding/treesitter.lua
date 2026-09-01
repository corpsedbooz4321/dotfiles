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
        "c_sharp",
        "javascript",
        "markdown",
        "markdown_inline",
        "typescript",
        "python",
        "json",
        "yaml",
        "toml",
        "regex",
        "css",
        "svelte",
      })
    end,
  },
}
