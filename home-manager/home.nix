{ config, pkgs, inputs, ... }:

{
  imports = [ ../modules/home-manager ];
  home = {
    username = "eagely";
    homeDirectory = "/home/eagely";
    stateVersion = "25.05";
    file = {
      "assets/wallpapers/wallpaper.png".source = ../modules/home-manager/assets/wallpapers/wallpaper.png;
      "assets/themes/wofi/mocha.css".source = ../modules/home-manager/assets/themes/wofi/mocha.css;
    };
  };
  programs.home-manager.enable = true;
  catppuccin.enable = true;
}


