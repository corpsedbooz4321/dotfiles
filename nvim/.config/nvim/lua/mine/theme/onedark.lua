return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      require("onedark").setup({
        -- Main options
        style = "dark",
        transparent = false,
        term_colors = true,
        ending_tildes = false,
        cmp_itemkind_reverse = false,

        -- Toggle theme style
        toggle_style_key = nil,
        toggle_style_list = {
          "dark",
          "darker",
          "cool",
          "deep",
          "warm",
          "warmer",
          "light",
        },

        -- Code style
        code_style = {
          comments = "italic",
          keywords = "none",
          functions = "none",
          strings = "none",
          variables = "none",
        },

        -- Lualine
        lualine = {
          transparent = false,
        },

        -- Custom colors
        colors = {},
        highlights = {},

        -- Diagnostics
        diagnostics = {
          darker = true,
          undercurl = true,
          background = true,
        },
      })

      vim.cmd.colorscheme("onedark")
    end,
  },
}
