local map = vim.keymap.set
local wk = require("which-key")

map("n", "<leader>x", "<cmd>wqa!<CR>")

map("n", "<C-Left>", "<C-w><Left>", { desc = "Move focus to the left window" })
map("n", "<C-Right>", "<C-w><Right>", { desc = "Move focus to the right window" })
map("n", "<C-Down>", "<C-w><Down>", { desc = "Move focus to the lower window" })
map("n", "<C-Up>", "<C-w><Up>", { desc = "Move focus to the upper window" })

wk.add({
  { "<leader>l", group = "LSP" },
  { "<leader>lr", vim.lsp.buf.rename, desc = "Smart rename" },
  { "<leader>lD", vim.lsp.buf.declaration, desc = "Go to declaration" },
  { "<leader>la", vim.lsp.buf.code_action, desc = "See available code actions" },
  { "<leader>lx", ":LspRestart<CR>", desc = "Restart LSP" },
  { "<leader>li", ":LspInfo<CR>", desc = "LSP info" },
  { "<leader>ld", group = "Diagnostics" },
  { "<leader>ldn", function() vim.diagnostic.jump({ count = 1, float = true }) end, desc = "Go to next diagnostic" },
  { "<leader>ldp", function() vim.diagnostic.jump({ count = -1, float = true }) end, desc = "Go to next diagnostic" },
  { "<leader>ldl", vim.diagnostic.open_float, desc = "Show line diagnostics" },
})

map("v", "y", "y$")
map("v", "<leader>s", "<cmd>w<cr>")
map("v", ">", ">gv")
map("v", "<", "<gv")
map("v", "<TAB>", ">gv")
map("v", "<S-TAB>", "<gv")
map("v", "<leader>s", "<cmd>sort<CR>")
