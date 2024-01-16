lvim.keys.insert_mode["jj"] = "<Esc>"
lvim.builtin.which_key.mappings["-"] = { "<cmd>noh<cr>", "No Highlight" }

lvim.builtin.which_key.mappings["h"] = nil

lvim.keys.insert_mode["<F12>"] = "<cmd>lua vim.lsp.buf.definition()<cr>"
lvim.keys.normal_mode["<F12>"] = "<cmd>lua vim.lsp.buf.definition()<cr>"

lvim.keys.insert_mode["<F36>"] = "<cmd>lua vim.lsp.buf.references()<cr>"
lvim.keys.normal_mode["<F36>"] = "<cmd>lua vim.lsp.buf.references()<cr>"

lvim.keys.insert_mode["<C-BS>"] = "<ESC>dbxi"

lvim.builtin.which_key.mappings["`"] = {
  name = "+Terminal",
  "<cmd>ToggleTerm direction=horizontal<cr>",
  "Horizontal terminal"
}
function SomeFunc(a)
  print(a)
end

local s = SomeFunc("")

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  h = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal terminal" },
  v = { "<cmd>ToggleTerm direction=vertical<cr>", "Vertical terminal" },
}
