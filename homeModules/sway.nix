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
        keybindings =
          let
              super = "Mod4";
              hyper = "Mod4+Shift";
          in {
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
            "${super}+Return" = "exec kitty";
            "${super}+Right" = "focus right";
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
            "${super}+q" = "kill";
            "${hyper}+space" = "floating toggle";
            "${super}+Up" = "focus up";
            "${super}+a" = "focus parent";
            "${super}+b" = "splith";
            #"${super}+d" = "exec /nix/store/0g7lc4g8ifsf1a5lnzaxyf8x9ak3qys9-dmenu-5.3/bin/dmenu_path | /nix/store/0g7lc4g8ifsf1a5lnzaxyf8x9ak3qys9-dmenu-5.3/bin/dmenu | /nix/store/xq5f95pp297afc2xjgrmhmf9w631qp7m-findutils-4.10.0/bin/xargs swaymsg exec --";
            "${super}+e" = "layout toggle split";
            "${super}+f" = "fullscreen toggle";
            "${super}+h" = "focus left";
            "${super}+j" = "focus down";
            "${super}+k" = "focus up";
            "${super}+l" = "focus right";
            "${super}+minus" = "scratchpad show";
            "${super}+r" = "mode resize";
            "${super}+s" = "layout stacking";
          };
      };
    };
  };
}
