{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./kitty.nix
    ./mimeapps.nix
    ./nixvim
    ./ssh.nix
    ./sway.nix
    ./theme.nix
    ./zoxide.nix
    ./zsh.nix
  ];
}

