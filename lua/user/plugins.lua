lvim.plugins = {
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require('dap-python').setup()
    end
  }
}
