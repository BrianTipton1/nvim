vim.api.nvim_create_autocmd('BufLeave', {
  callback = function() end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('VimLeavePre', {
  desc = 'Close all terminal windows on Neovim exit',
  group = vim.api.nvim_create_augroup('CloseTerminalsOnExit', { clear = true }),
  callback = function()
    local windows = vim.api.nvim_list_wins()
    for _, win in ipairs(windows) do
      local buf = vim.api.nvim_win_get_buf(win)
      if vim.bo[buf].buftype == 'terminal' then
        vim.api.nvim_win_close(win, true)
      end
    end
  end,
})
