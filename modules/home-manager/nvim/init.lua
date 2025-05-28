require("options")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function() vim.highlight.on_yank() end,
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "tpope/vim-sleuth",
  "brenoprata10/nvim-highlight-colors",
  require("plugins.blink"),
  require("plugins.catppuccin"),
  require("plugins.lspconfig"),
  require("plugins.lazydev"),
  require("plugins.conform"),
  require("plugins.which-key"),
  require("plugins.treesitter"),
  require("plugins.tiny-inline-diagnostic"),
  require("plugins.noice"),
  require("plugins.lualine"),
  require("plugins.autopairs"),
  require("plugins.telescope"),
})
