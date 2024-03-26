local P = {
  'mg979/vim-visual-multi',
  init = function() end,
  vim.cmd [[
  let g:VM_maps = {}
  let g:VM_maps["Add Cursor Down"]             = '<C-A-Down>'
  let g:VM_maps["Add Cursor Up"]               = '<C-A-Up>'
]],
}
return P
