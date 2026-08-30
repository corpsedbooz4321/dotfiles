return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      dap.configurations.cpp = {
        {
          name = "Launch C++",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }

      dap.configurations.c = dap.configurations.cpp

      dap.configurations.python = {
        {
          name = "Launch Python",
          type = "python",
          request = "launch",
          program = "${file}",
          pythonPath = function()
            return vim.fn.exepath("python")
          end,
        },
      }
    end,
  },
}
