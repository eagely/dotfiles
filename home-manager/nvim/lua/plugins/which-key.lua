return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>l", group = "LSP" },
      { "<leader>lr", vim.lsp.buf.rename, desc = "Smart rename" },
      { "<leader>lD", vim.lsp.buf.declaration, desc = "Go to declaration" },
      { "<leader>la", vim.lsp.buf.code_action, desc = "See available code actions" },
      { "<leader>lx", "<cmd>LspRestart<cr>", desc = "Restart LSP" },
      { "<leader>li", "<cmd>LspInfo<cr>", desc = "LSP info" },
      { "<leader>ld", group = "Diagnostics" },
      { "<leader>ldn", function() vim.diagnostic.jump({ count = 1, float = true }) end, desc = "Next diagnostic" },
      { "<leader>ldp", function() vim.diagnostic.jump({ count = -1, float = true }) end, desc = "Prev diagnostic" },
      { "<leader>ldl", vim.diagnostic.open_float, desc = "Line diagnostics" },
    })
  end,
  keys = {
    {
      "<leader>?",
      function() require("which-key").show({ global = false }) end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
