{config, pkgs, ... }: 
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind = [
      "$mod, F, exec, firefox"
      "$mad, D, exec, kitty"
      ", Print, exec, grimblast copy area"
    ];
    # Other configuration options...
  };
}
