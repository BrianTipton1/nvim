local dap = require('dap')
dap.adapters.mix_task = {
  type = 'executable',
  command = '/home/brian/.local/share/lvim/mason/bin/elixir-ls-debugger',
  args = {},
  exitAfterTaskReturns = false
}
dap.configurations.elixir = {
  {
    type = "mix_task",
    name = "mix test",
    task = 'test',
    taskArgs = { "--trace", "--no-halt" },
    startApps = true,
    request = "launch",
    projectDir = "${workspaceFolder}",
    requireFiles = {
      "test/**/test_helper.exs",
      "test/**/*_test.exs"
    }
  },
}
