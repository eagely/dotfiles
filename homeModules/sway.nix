{ config, ... }:

{
  wayland = {
    windowManager.sway = {
      enable = true;
      config = rec {
        modifier = "Mod4";
        terminal = "kitty";
        fonts = {
          names = [ "Maple Mono" ];
          size = 14.0;
        };
        output."*".bg = "${config.home.file."wallpaper.png".source} fill";
      };
    };
  };
}
