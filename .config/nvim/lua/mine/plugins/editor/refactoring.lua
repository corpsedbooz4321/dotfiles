return {
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    opts = {}, -- Automatically runs require("inc-rename").setup()
    keys = {
      {
        "<leader>rn",
        function()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        desc = "Incremental rename",
        mode = "n",
        noremap = true,
        expr = true,
      },
    },
  },
  {
    "ThePrimeagen/refactoring.nvim",
    opts = {},
    keys = {
      {
        "<leader>r",
        function()
          require("refactoring").select_refactor({
            show_success_message = true,
          })
        end,
        mode = "v",
        desc = "Select Refactor",
      },
    },
  },
}
