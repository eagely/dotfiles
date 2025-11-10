return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    local ok, blink = pcall(require, "blink.cmp")
    local capabilities = ok and blink.get_lsp_capabilities() or vim.lsp.protocol.make_client_capabilities()

    vim.diagnostic.config({
      float = { border = "rounded" },
    })

    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
        },
      },
    })

    vim.lsp.config("tinymist", {
      capabilities = capabilities,
      filetypes = { "typst" },
      cmd = { "tinymist" },
      root_dir = lspconfig.util.root_pattern(".git", "."),
      settings = {
        exportPdf = "onSave",
      },
    })

    vim.lsp.config("ts_ls", {
      capabilities = capabilities,
    })
  end,
}
