{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft.nix = [ "alejandra" ];
    };
  };
}
