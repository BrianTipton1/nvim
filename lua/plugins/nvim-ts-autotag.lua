local P = {
  'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup()
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
}
return P
