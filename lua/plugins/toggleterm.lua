local P = {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup()
    require('which-key').register {
      ['<leader>`'] = {
        name = '+Terminal',
        '<cmd>ToggleTerm size=4 direction=horizontal<cr>',
        'Horizontal terminal',
      },
    }
  end,
  dependencies = {
    'folke/which-key.nvim',
  },
}
return P
