local helpers = require 'helpers'
local P = {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function()
    require('which-key').register {
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      ['<leader>-'] = { '<cmd>noh<cr>', 'No Highlight' },
      ['<leader>X'] = {
        '<cmd>w<cr><cmd>bd<cr>',
        'Destroy Buffer and write',
      },
      ['<leader>x'] = {
        '<cmd>bd<cr>',
        'Destroy Buffer w/o writing',
      },
      ['<leader>f'] = {
        name = '+Find',
        f = {
          function()
            helpers.exec_if_git {
              yes = function()
                vim.cmd 'Telescope git_files'
              end,
              no = function()
                vim.cmd 'Telescope find_files'
              end,
            }
          end,
          'Files',
        },
        g = { '<cmd>Telescope live_grep<cr>', 'Grep' },
        c = {
          function() end,
          'Commits',
        },
        b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
        s = { '<cmd>Telescope lsp_workspace_symbols<cr>', 'Symbols' },
        p = { '<cmd>Telescope pickers<cr>', 'All Pickers' },
      },

      ['<leader>b'] = {
        d = { '<cmd>bd<cr>', 'Buffer Delete' },
      },

      ['<leader>t'] = {
        name = '+Toggle',
        f = { '<cmd>ToggleTerm<cr>', 'Floating terminal' },
        h = { '<cmd>ToggleTerm size=4 direction=horizontal<cr>', 'Horizontal terminal' },
        v = { '<cmd>ToggleTerm size=5 direction=vertical<cr>', 'Vertical terminal' },
        t = { '<cmd>NvimTreeToggle<cr>', 'Tree' },
      },
    }
  end,
}

return P
