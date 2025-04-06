{ inputs, pkgs, ...}:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;

    plugins = {
      lualine.enable = true;
      telescope.enable = true;
      treesitter.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      nvim-autopairs
    ];

    extraConfigLua = ''
      require("nvim-autopairs").setup {}
    '';
  };
}
