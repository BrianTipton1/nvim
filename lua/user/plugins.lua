lvim.plugins = {
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("elixir").setup()
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()'
  }, {
  "evesdropper/luasnip-latex-snippets.nvim",
}, {
  'mg979/vim-visual-multi'
}, {
  "mfussenegger/nvim-dap-python",
  config = function()
    require('dap-python').setup()
  end
}, {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
    vim.g.vimtex_view_general_viewer  = "distrobox-host-exec flatpak run org.kde.okular"
    vim.g.vimtex_quickfix_enabled     = 1
    vim.g.vimtex_syntax_enabled       = 1
    vim.g.vimtex_quickfix_mode        = 0
    vim.g.vimtex_compiler_latexmk     = {
      options = {
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
        '-shell-escape'
      },
    }
  end,
  ft = 'tex'
}


}
