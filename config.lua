reload 'user.mappings'
reload 'user.plugins'
reload 'user.visualmulti'

lvim.format_on_save.enabled = true

vim.opt.swapfile = false

vim.cmd [[set relativenumber]]
vim.cmd [[
  augroup AutoSaveGroup
    autocmd!
    autocmd InsertLeave * if filereadable(expand('%')) | :wa | endif
  augroup END
]]

vim.cmd [[
  try
    aunmenu PopUp.How-to\ disable\ mouse
    aunmenu PopUp.-1-
  catch /^Vim\%((\a\+)\)\=:E329/
    " Menu item does not exist, handle the error or do nothing
  endtry
]]
