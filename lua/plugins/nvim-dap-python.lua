local P = {
  'mfussenegger/nvim-dap-python',
  config = function()
    require('dap-python').setup()
  end,
  dependencies = {
    'mfussenegger/nvim-dap',
  },
}
return P
