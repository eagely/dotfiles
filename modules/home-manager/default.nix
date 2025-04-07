{ config, pkgs, ... }:

{
  imports = [
    ./kitty.nix
    ./git.nix
    ./ssh.nix
    ./sway.nix
    ./mimeapps.nix
    ./zoxide.nix
    ./zsh.nix
    ./nixvim
  ];
}

