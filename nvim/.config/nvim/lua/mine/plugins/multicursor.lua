return {
  {
    "mg979/vim-visual-multi",
    event = "BufReadPost",
    init = function()
      -- Prevents default mappings from overriding existing keys if needed
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>", -- Select word under cursor / move to next match
        ["Find Subword Under"] = "<C-n>",
      }
    end,
  },
}
