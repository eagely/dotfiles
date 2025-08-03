{ ... }:

{
  imports = [
    ./git.nix
    ./hyprland.nix
    ./kitty.nix
    ./mimeapps.nix
    ./ssh.nix
    ./starship.nix
    ./theme.nix
    ./zoxide.nix
    ./zsh.nix
  ];
  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };
}
