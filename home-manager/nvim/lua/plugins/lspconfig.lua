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
  end,
}
