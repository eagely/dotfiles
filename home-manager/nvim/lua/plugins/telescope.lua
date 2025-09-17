return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup()

    local map = vim.keymap.set
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "go to references" })
    map("n", "<leader>ff", builtin.find_files)
    map("n", "<leader>fg", builtin.live_grep)
    map("n", "<leader>fb", builtin.buffers)
    map("n", "<leader>fh", builtin.help_tags)
    map("n", "gr", builtin.lsp_references)
  end,
}
