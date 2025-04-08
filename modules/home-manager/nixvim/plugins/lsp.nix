{
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      lua-ls.enable = true;
      nil-ls.enable = true;
      pyright.enable = true;
      rust-analyzer.enable = true;
      tsserver.enable = true;
    };
  };
}
