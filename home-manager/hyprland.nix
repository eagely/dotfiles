{ inputs, config, pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    settings = {
      "$mod" = "SUPER";

      monitor = [
        "HDMI-A-1, 2560x1440@144, 0x0, 1"
        "eDP-1, disable"
      ];

      bind =
        let
          mod = "SUPER";
          hyper = "SUPER CTRL";
          workspaceBinds =
            builtins.concatLists (builtins.genList
              (n: [
                "${mod},${toString n},workspace,name:${toString n}"
                "${hyper},${toString n},movetoworkspace,name:${toString n}"
              ]) 10);
        in
        workspaceBinds ++ [
          "${mod},Return,exec,kitty"
          "${mod},b,exec,firefox"
          "${mod},w,exec,wofi --show drun --style ${config.home.file."assets/themes/wofi/mocha.css".source}"
          ",Print,exec,grim -g \"$(slurp)\" - | wl-copy"

          "${mod},f,fullscreen"
          "${mod},e,togglefloating"
          "${mod},q,killactive"
          "${mod},h,movefocus,l"
          "${mod},j,movefocus,d"
          "${mod},k,movefocus,u"
          "${mod},l,movefocus,r"
          "${mod},Down,movefocus,d"
          "${mod},Up,movefocus,u"
          "${mod},Left,movefocus,l"
          "${mod},Right,movefocus,r"

          "${hyper},h,movewindow,l"
          "${hyper},j,movewindow,d"
          "${hyper},k,movewindow,u"
          "${hyper},l,movewindow,r"
          "${hyper},Down,movewindow,d"
          "${hyper},Up,movewindow,u"
          "${hyper},Left,movewindow,l"
          "${hyper},Right,movewindow,r"

          "${hyper},space,togglefloating"
          "${hyper},c,exec,hyprctl reload"
          "${hyper},e,exec,hyprctl dispatch exit"
        ];

      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];

      windowrule = [
        "bordersize 0, floating:0, onworkspace:w[tv1]"
        "rounding 0, floating:0, onworkspace:w[tv1]"
        "bordersize 0, floating:0, onworkspace:f[1]"
        "rounding 0, floating:0, onworkspace:f[1]"
      ];
    };
  };
}
