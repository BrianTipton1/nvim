local P = {
  'lervag/vimtex',
  config = function()
    vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
    vim.g.vimtex_view_general_viewer = 'distrobox-host-exec flatpak run org.kde.okular'
    vim.g.vimtex_quickfix_enabled = 1
    vim.g.vimtex_syntax_enabled = 1
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_compiler_latexmk = {
      options = {
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
        '-shell-escape',
      },
    }
  end,
  ft = 'tex',
  dependencies = {
    'evesdropper/luasnip-latex-snippets.nvim',
  },
}
return P
