{ pkgs, ... }:

{
  imports = [
    ./autopairs.nix
    ./auto-save.nix
    ./conform.nix
    ./lsp.nix
    ./lualine.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
    ./typst.nix
    ./which-key.nix
  ];
  
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    vim-sleuth
    telescope-ui-select-nvim
  ];
}
