return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = "never"
      else
        lsp_format_opt = "fallback"
      end
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
    formatters_by_ft = {
      lua = { "stylua" },
      c = { "clang-format" },
      rust = { "rustfmt" },
    },
    formatters = {
      stylua = {
        args = { "--search-parent-directories", "-" },
      },
    },
  },
  keys = {
    { "<leader>i", function() require("conform").format() end, desc = "Format Buffer" },
  },
}
