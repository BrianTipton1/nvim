local helpers = require 'helpers'
local P = {
  'folke/which-key.nvim',
  event = 'VeryLazy',

  keys = {
    -- Misc
    {
      '<leader>?',
      function()
        require('which-key').show { global = false }
      end,
      desc = 'Buffer Local Keymaps (which-key)',
    },
    {
      '<leader>`',
      '<cmd>ToggleTerm<cr>',
      desc = 'Toggle Terminal',
    },
    {
      '<leader>-',
      '<cmd>noh<cr>',
      desc = 'No Highlight',
    },
    {
      '<leader>x',
      function()
        local buf = vim.api.nvim_get_current_buf()
        local buf_name = vim.api.nvim_buf_get_name(buf)

        if vim.api.nvim_buf_get_option(buf, 'modifiable') and buf_name ~= '' then
          vim.cmd 'write'
        end

        vim.api.nvim_buf_delete(buf, { force = true })
      end,
      desc = 'Destroy buffer and write',
    },
    {
      '<leader>i',
      vim.lsp.buf.hover,
      desc = 'Destroy buffer and write',
    },
    -- File grouping
    {
      '<leader>f',
      group = '[F]ile',
    },
    {
      '<leader>fm',
      vim.lsp.buf.format { async = false },
      desc = 'Format',
    },
    -- Search Grouping
    {
      '<leader>s',
      group = '[S]earch',
    },
    {
      '<leader>sf',
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
      desc = 'Files',
    },
    {
      '<leader>sg',
      '<cmd>Telescope live_grep<cr>',
      desc = 'Grep',
    },
    {
      '<leader>st',
      '<cmd>Telescope live_grep<cr>',
      desc = 'Text (Grep)',
    },
    {
      '<leader>sb',
      '<cmd>Telescope buffers<cr>',
      desc = 'Buffers',
    },
    {
      '<leader>ss',
      '<cmd>Telescope lsp_workspace_symbols<cr>',
      desc = 'Symbols',
    },
    {
      '<leader>sp',
      '<cmd>Telescope pickers<cr>',
      desc = 'Pickers',
    },
    --- Code Grouping
    {
      '<leader>c',
      group = '[C]ode',
    },
    {
      '<leader>ca',
      vim.lsp.buf.code_action,
      desc = 'Action',
    },
    {
      '<leader>cf',
      vim.lsp.buf.rename,
      'Rename',
    },
    {
      '<leader>cr',
      vim.lsp.buf.references,
      'References',
    },
    {
      '<leader>cd',
      vim.lsp.buf.definition,
      'Definition',
    },
    {
      '<leader>cd',
      vim.lsp.buf.implementation,
      'Implementation',
    },
    -- Error Grouping
    {
      '<leader>e',
      group = '[E]rror',
    },
    {
      '<leader>en',
      vim.diagnostic.goto_next,
      desc = 'Next',
    },
    {
      '<leader>ep',
      vim.diagnostic.goto_prev,
      desc = 'Previous',
    },
    {
      '<leader>eq',
      vim.diagnostic.setloclist,
      desc = 'QuickFix',
    },
    {
      '<leader>ef',
      vim.diagnostic.open_float,
      desc = 'Show Error Messages',
    },
    {
      '<leader>t',
      group = '[T]oggle',
    },
    {
      '<leader>tt',
      '<cmd>NvimTreeToggle<cr>',
      desc = 'Tree',
    },
  },
}

return P
