{ config, pkgs, inputs, ... }:

{
  imports = [ ../modules/home-manager inputs.nixvim.homeManagerModules.nixvim ];
  home.username = "eagely";
  home.homeDirectory = "/home/eagely";
  home.stateVersion = "25.05";
  home.file = {
    "assets/wallpapers/wallpaper.png".source = ../modules/home-manager/assets/wallpapers/wallpaper.png;
    "assets/themes/wofi/mocha.css".source = ../modules/home-manager/assets/themes/wofi/mocha.css;
  };
  programs.home-manager.enable = true;
}

