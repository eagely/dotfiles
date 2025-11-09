{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha";
    settings = {
      dynamic_background_opacity = "no";
      background_opacity = 0.9;
      background_blur = 1;
      cursor_trail = 3;
      cursor_trail_decay = "0.05 0.2";
      confirm_os_window_close = 0;
    };
    font = {
      name = "Maple Mono NF";
      size = 18;
    };
  };
}

