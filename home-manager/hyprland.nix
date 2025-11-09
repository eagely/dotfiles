{ inputs, config, pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    settings = {
      "$mod" = "SUPER";

      exec-once = [
        "wpaperd -d"
      ];

      monitor = [
        "DP-3, 2560x1440@144.0, 0x0, 1"
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
          "${mod},w,exec,wofi --show drun --style ${toString /home/eagely/dotfiles/home-manager/mocha.css}"
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

      bindm = 
        let
          mod = "SUPER";
          hyper = "SUPER CTRL";
        in [
          "${mod}, mouse:272, movewindow"
          "${mod}, mouse:273, resizewindow"
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
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}
