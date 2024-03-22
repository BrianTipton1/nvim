lvim.keys.insert_mode["jj"] = "<Esc>"

lvim.keys.insert_mode["<F12>"] = "<cmd>lua vim.lsp.buf.definition()<cr>"
lvim.keys.normal_mode["<F12>"] = "<cmd>lua vim.lsp.buf.definition()<cr>"
lvim.keys.insert_mode["<F36>"] = "<cmd>lua vim.lsp.buf.references()<cr>"
lvim.keys.normal_mode["<F36>"] = "<cmd>lua vim.lsp.buf.references()<cr>"
lvim.keys.insert_mode["<C-BS>"] = "<ESC>dbxi"

lvim.keys.normal_mode["<Tab>"] = "<cmd>BufferLineCycleNext<cr>"
lvim.keys.normal_mode["<S-Tab>"] = "<cmd>BufferLineCyclePrev<cr>"

lvim.builtin.which_key.mappings["h"] = nil
lvim.builtin.which_key.mappings["e"] = nil
lvim.builtin.which_key.mappings["f"] = nil
lvim.builtin.which_key.mappings["e"] = nil
lvim.builtin.which_key.mappings["<F1>"] = nil
lvim.keys.insert_mode["<F1>"] = "<Esc>"
lvim.keys.normal_mode["<F1>"] = "<Esc>"

lvim.builtin.which_key.mappings["-"] = { "<cmd>noh<cr>", "No Highlight" }


lvim.builtin.which_key.mappings["`"] = {
  name = "+Terminal",
  "<cmd>ToggleTerm size=4 direction=horizontal<cr>",
  "Horizontal terminal"
}
lvim.builtin.which_key.mappings["X"] = {
  "<cmd>BufferKill<cr>",
  "Destroy Buffer w/o Saving",
}
lvim.builtin.which_key.mappings["x"] = {
  "<cmd>w<cr><cmd>BufferKill<cr>",
  "Save and Destroy Buffer",
}
lvim.builtin.which_key.mappings["f"] = {
  name = "+Find",
  f = { "<cmd>Telescope git_files<cr>", "Files" },
  g = { "<cmd>Telescope live_grep<cr>", "Grep" },
  c = { "<cmd>Telescope git_commits<cr>", "Commits" },
  b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  s = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Symbols" },
  p = { "<cmd>Telescope pickers<cr>", "All Pickers" }
}


lvim.builtin.which_key.mappings["t"] = {
  name = "+Toggle",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  h = { "<cmd>ToggleTerm size=4 direction=horizontal<cr>", "Horizontal terminal" },
  v = { "<cmd>ToggleTerm size=5 direction=vertical<cr>", "Vertical terminal" },
  t = { "<cmd>NvimTreeToggle<cr>", "Tree" }
}
