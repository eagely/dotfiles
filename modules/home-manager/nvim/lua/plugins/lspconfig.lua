return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.diagnostic.config({
      float = {
        border = "rounded",
      },
    })

    local capabilities = require("blink.cmp").get_lsp_capabilities()

    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
    })

    vim.lsp.config("rust_analyzer", {
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy",
          },
        },
      },
    })
  end,
}
