-- lua/mine/dap/dap.lua
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
  },
  config = function()
    local dap = require("dap")

    -- DO NOT run require("dap").setup({})
    -- Instead, configure signs, adapters, or configurations directly:
    vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })

    -- Load language configurations from your language files if needed
  end,
}
