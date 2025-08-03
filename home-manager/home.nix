{ config, pkgs, inputs, ... }:

{
  imports = [ ../home-manager ];
  home = {
    username = "eagely";
    homeDirectory = "/home/eagely";
    stateVersion = "25.05";
    file = {
      "assets/wallpapers/wallpaper.png".source = ../home-manager/assets/wallpapers/wallpaper.png;
      "assets/themes/wofi/mocha.css".source = ../home-manager/assets/themes/wofi/mocha.css;
    };
  };
  programs.home-manager.enable = true;
}

