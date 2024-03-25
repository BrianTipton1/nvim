local P = {
  'mg979/vim-visual-multi',
  config = function()
    vim.cmd [[
  let g:VM_maps = {}
  let g:VM_maps["Add Cursor Down"]             = '<C-S-Down>'
  let g:VM_maps["Add Cursor Up"]               = '<C-S-Up>'
]]
  end,
  lazy = false,
}
return P
