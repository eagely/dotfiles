{
  programs.nixvim = {
    autoCmd = [
      {
        event = "BufWritePre";
        pattern = "*.rs";
        command = ''
          local clients = vim.lsp.get_active_clients({ name = 'rust_analyzer', bufnr = vim.api.nvim_get_current_buf() })
          if #clients > 0 then
            local params = vim.lsp.util.make_range_params()
            params.context = {
              only = { "source.organizeImports" },
              triggerKind = 1
            }
            vim.lsp.buf.code_action({
               context = params.context,
               filter = function(action)
                 return action.kind == "source.organizeImports"
               end,
               apply = true
            })
          end
        '';
      }
    ];

    diagnostics = {
      enable = true;
      float = {
        border = "rounded";
        max_width = 80;
        header = false;
      };
    };

    plugins.lsp = {
      enable = true;

      inlayHints = true;

      preConfig = ''
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
          vim.lsp.handlers.hover, {
            border = "rounded",
            max_width = 80,
            max_height = 30,
          }
        )
      '';

      servers = {
        lua_ls.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        ts_ls.enable = true;
      };
    };
    extraConfigLua = ''
      local orig_diag_open_float = vim.diagnostic.open_float
      vim.diagnostic.open_float = function(_, opts)
        opts = opts or {}
        opts.border = 'rounded'
        return orig_diag_open_float(nil, opts)
      end
    '';
  };
}
