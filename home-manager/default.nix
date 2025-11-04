{ ... }:

{
  imports = [
    ./git.nix
    ./hyprland.nix
    ./kitty.nix
    ./xdg.nix
    ./ssh.nix
    ./theme.nix
    ./wallpaper.nix
    ./zoxide.nix
    ./zsh.nix
  ];
  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };
}
