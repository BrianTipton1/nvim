local P = {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup()
  end,
  dependencies = {
    'folke/which-key.nvim',
  },
}
return P
