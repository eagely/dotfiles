{ pkgs, ... }:

{
  imports = [
    ./autopairs.nix
    ./auto-save.nix
    ./cmp.nix
    ./conform.nix
    ./lsp.nix
    ./lualine.nix
    ./small.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];
  
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    vim-sleuth
    telescope-ui-select-nvim
  ];
}
