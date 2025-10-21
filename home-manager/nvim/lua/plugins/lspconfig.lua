return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    local ok, blink = pcall(require, "blink.cmp")
    local capabilities = ok and blink.get_lsp_capabilities()
      or vim.lsp.protocol.make_client_capabilities()

    vim.diagnostic.config({
      float = { border = "rounded" },
    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
        },
      },
    })

    lspconfig.tinymist.setup({
      capabilities = capabilities,
      filetypes = { "typst" },
      cmd = { "tinymist" },
      root_dir = lspconfig.util.root_pattern(".git", "."),
      settings = {
        exportPdf = "onSave",
      },
    })

    lspconfig.ts_ls.setup({
      capabilities = capabilities,
    })
  end,
}
