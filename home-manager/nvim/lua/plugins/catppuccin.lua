return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme catppuccin")

    vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
    vim.cmd([[highlight NormalNC guibg=NONE ctermbg=NONE]])
    vim.cmd([[highlight NormalFloat guibg=NONE ctermbg=NONE]])
    vim.cmd([[highlight FloatBorder guibg=NONE ctermbg=NONE]])
    vim.cmd([[highlight LineNr guibg=NONE ctermbg=NONE]])
    vim.cmd([[highlight SignColumn guibg=NONE ctermbg=NONE]])
    vim.cmd([[highlight VertSplit guibg=NONE ctermbg=NONE]])
  end,
}
