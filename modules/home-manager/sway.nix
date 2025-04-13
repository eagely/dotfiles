{ config, ... }:

{
  wayland.windowManager.sway = {
    enable = true;
    config = {
      fonts = {
        names = [ "Inter" ];
        size = 14.0;
      };
      gaps = {
        smartBorders = "on";
        smartGaps = true;
        inner = 10;
      };
      window.titlebar = false;
      output = {
        "*" = {
          bg = "${config.home.file."assets/wallpapers/wallpaper.png".source} fill";
        };
        "eDP-1" = { disable = ""; };
        "DP-1" = {
          enable = "";
          resolution = "2560x1440";
          position = "0,0";
        };
      };
      keybindings = let
        super = "Mod4";
        hyper = "Mod4+Shift";
      in {
        "${super}+w" = "exec wofi --show drun --style ${config.home.file."assets/themes/wofi/mocha.css".source}";
        "Print" = "exec sh -c 'grim -g \"$(slurp)\" - | wl-copy'";
        "${super}+0" = "workspace number 10";
        "${super}+1" = "workspace number 1";
        "${super}+2" = "workspace number 2";
        "${super}+3" = "workspace number 3";
        "${super}+4" = "workspace number 4";
        "${super}+5" = "workspace number 5";
        "${super}+6" = "workspace number 6";
        "${super}+7" = "workspace number 7";
        "${super}+8" = "workspace number 8";
        "${super}+9" = "workspace number 9";
        "${super}+Down" = "focus down";
        "${super}+Left" = "focus left";
        "${super}+Right" = "focus right";
        "${super}+Return" = "exec kitty";
        "${super}+Up" = "focus up";
        "${super}+a" = "focus parent";
        "${super}+b" = "exec floorp";
        "${super}+e" = "layout toggle split";
        "${super}+f" = "fullscreen toggle";
        "${super}+h" = "focus left";
        "${super}+j" = "focus down";
        "${super}+k" = "focus up";
        "${super}+l" = "focus right";
        "${super}+minus" = "scratchpad show";
        "${super}+q" = "kill";
        "${super}+r" = "mode resize";
        "${super}+s" = "layout stacking";
        "${hyper}+0" = "move container to workspace number 10";
        "${hyper}+1" = "move container to workspace number 1";
        "${hyper}+2" = "move container to workspace number 2";
        "${hyper}+3" = "move container to workspace number 3";
        "${hyper}+4" = "move container to workspace number 4";
        "${hyper}+5" = "move container to workspace number 5";
        "${hyper}+6" = "move container to workspace number 6";
        "${hyper}+7" = "move container to workspace number 7";
        "${hyper}+8" = "move container to workspace number 8";
        "${hyper}+9" = "move container to workspace number 9";
        "${hyper}+Down" = "move down";
        "${hyper}+Left" = "move left";
        "${hyper}+Right" = "move right";
        "${hyper}+Up" = "move up";
        "${hyper}+c" = "reload";
        "${hyper}+e" = "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -b 'Yes, exit sway' 'swaymsg exit'";
        "${hyper}+h" = "move left";
        "${hyper}+j" = "move down";
        "${hyper}+k" = "move up";
        "${hyper}+l" = "move right";
        "${hyper}+minus" = "move scratchpad";
        "${hyper}+space" = "floating toggle";
      };
    };
  };
}

