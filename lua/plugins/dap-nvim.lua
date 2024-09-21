-- require https://romangeber.com/blog/tech/nvim_rust_debugger
local dap = require "dap"

require("dap").set_log_level "TRACE"
dap.adapters.codellb = {
  type = "executable",
  command = "/usr/bin/codelldb", -- adjust as needed
  name = "codelldb",
}

dap.adapters.lldb = {
  type = "executable",
  command = "/usr/bin/lldb-dap", -- adjust as needed
  name = "lldb adapter",
}
dap.configurations.cpp = {
  {
    name = "C lldb",
    type = "lldb",
    request = "launch",
    program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
    args = {},
    runInTerminal = false,
  },
  {
    name = "C Codelldb",
    type = "codelldb",
    request = "launch",
    program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
    args = {},
    runInTerminal = false,
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Python",
    program = "${file}",
    pythonPath = function()
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
        return cwd .. "/venv/bin/python"
      else
        return "/usr/bin/python"
      end
    end,
  },
}
dap.configurations.javascript = {
  {
    type = "node2",
    request = "launch",
    name = "Launch file",
    runtimeExecutable = "node",
    program = "${file}",
    cwd = vim.fn.getcwd(),
  },
}
