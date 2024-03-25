local P = {
  'numToStr/Comment.nvim',
  opts = {},
  setup = function()
    require('Comment').setup()
    vim.keymap.set('v', '<leader>/', function()
      require('Comment.api').comment()
    end, { desc = '[/] Comment Code' })
  end,
}

return P
