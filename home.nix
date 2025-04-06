{
  imports = [ ./homeModules ];
  home.username = "eagely";
  home.homeDirectory = "/home/eagely";
  home.stateVersion = "25.05";
  home.file = {
    "assets/wallpapers/wallpaper.png".source = ./homeModules/assets/wallpapers/wallpaper.png;
    "assets/themes/wofi/mocha.css".source = ./homeModules/assets/themes/wofi/mocha.css;
  };
  programs.home-manager.enable = true;
}

