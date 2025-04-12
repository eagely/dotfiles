{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    formattersByFt.nix = [ "alejandra" ];
  };
}
