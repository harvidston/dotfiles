local dap = require('dap')
local dapui = require("dapui")

dap.adapters.python = {
  type = 'server',
  host = '127.0.0.1',
  port = 5678,
}

dap.configurations.python = {
  {
    name = "Attach to Docker",
    type = "python",
    request = "attach",
    connect = {
      host = "127.0.0.1",
      port = 5678,
    },
    pathMappings = {
      {
        localRoot = vim.fn.getcwd(),
        remoteRoot = "/app",
      },
    },
    justMyCode = false,
  },
}

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.keymap.set('n', '<F5>', function() require'dap'.continue() end)
vim.keymap.set('n', '<F10>', function() require'dap'.step_over() end)
vim.keymap.set('n', '<F11>', function() require'dap'.step_into() end)
vim.keymap.set('n', '<F12>', function() require'dap'.step_out() end)
vim.keymap.set('n', '<Leader>b', function() require'dap'.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dc', function() require'dapui'.close() end)
vim.keymap.set('n', '<Leader>do', function() require'dapui'.open() end)

