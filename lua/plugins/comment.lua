local P = {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup()
    require('which-key').register({
      ['<leader>/'] = {
        function()
          local api = require 'Comment.api'
          local mode = vim.fn.mode()
          if mode == 'v' or mode == 'V' then
            api.toggle.linewise(vim.fn.visualmode())
          else
            api.toggle.linewise.current()
          end
        end,
        'Toggle comment',
      },
    }, { mode = { 'n', 'v' } })
  end,
}

return P
