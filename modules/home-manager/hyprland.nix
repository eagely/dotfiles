{ config, pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, B, exec, firefox"
        "$mod, ENTER, exec, kitty"
        "$mod, Q, killactive"
        ", Print, exec, grimblast copy area"
      ];
    };
  };
}
