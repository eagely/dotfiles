local map = vim.keymap.set
local wk = require("which-key")

map("n", "<leader>x", "<cmd>wqa!<CR>")
map("n", "<leader>s", "<cmd>w<CR>")
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

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "go to declaration" })
vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { desc = "go to references" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "go to implementation" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "hover doc" })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "signature help" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set("n", "<leader>h", vim.lsp.buf.code_action, { desc = "code action" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "prev diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "next diagnostic" })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.open_float, { desc = "line diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "diagnostic list" })

vim.keymap.set("n", "<leader>cr", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 20)

  vim.fn.chansend(vim.bo.channel, { "cargo run\r\n" })
end)

