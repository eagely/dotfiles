{ config, pkgs, inputs, ... }:

{
  imports = [ ../home-manager ];
  home = {
    username = "eagely";
    homeDirectory = "/home/eagely";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
}

