return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
  },

  keys = {
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Find Plugin Files",
    },
    {
      ";f",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
          hidden = true,
        })
      end,
      desc = "Find Files",
    },
    {
      ";r",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Live Grep",
    },
    {
      "gh",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Buffers",
    },
    {
      ";t",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "Help Tags",
    },
    {
      "..",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume Telescope",
    },
    {
      ";e",
      function()
        require("telescope.builtin").diagnostics()
      end,
      desc = "Diagnostics",
    },
    {
      ";s",
      function()
        require("telescope.builtin").treesitter()
      end,
      desc = "Treesitter",
    },
  },

  opts = {
    defaults = {
      wrap_results = true,
      layout_strategy = "horizontal",
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        n = {},
      },
    },

    pickers = {
      diagnostics = {
        theme = "ivy",
        initial_mode = "normal",
        layout_config = {
          preview_cutoff = 9999,
        },
      },
    },
  },
}
