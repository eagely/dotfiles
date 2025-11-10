{
  config,
  pkgs,
  ...
}: let
  rosewater = "#f5e0dc";
  flamingo = "#f2cdcd";
  pink = "#f5c2e7";
  mauve = "#cba6f7";
  red = "#f38ba8";
  maroon = "#eba0ac";
  peach = "#fab387";
  yellow = "#f9e2af";
  green = "#a6e3a1";
  teal = "#94e2d5";
  sky = "#89dceb";
  sapphire = "#74c7ec";
  blue = "#89b4fa";
  lavender = "#b4befe";
  text = "#cdd6f4";
  subtext1 = "#bac2de";
  subtext0 = "#a6adc8";
  overlay2 = "#9399b2";
  overlay1 = "#7f849c";
  overlay0 = "#6c7086";
  surface2 = "#585b70";
  surface1 = "#45475a";
  surface0 = "#313244";
  base = "#1e1e2e";
  mantle = "#181825";
  crust = "#11111b";
in {
  programs.waybar = {
    enable = true;
    settings.main = {
      layer = "top";
      position = "top";
      height = 30;
      modules-left = ["custom/launcher" "hyprland/workspaces"];
      modules-center = ["clock"];
      modules-right = [];
      clock = {
        calendar = {
          format = {today = "<span color='#98971A'><b>{}</b></span>";};
        };
        format = "{:%d %b %H:%M}";
        tooltip = false;
      };
      "custom/launcher" = {
        format = "";
        tooltip = false;
      };
    };

    style = ''
      * {
        border: none;
        border-radius: 0px;
        padding: 0;
        margin: 0;
        font-family: Maple Mono NF;
        font-weight: bold;
        opacity: 0.9;
        font-size: 16;
      }

      window#waybar {
        background: ${surface0};
      }

      #workspaces {
        padding-left: 15px;
      }

      #workspaces button {
        color: ${yellow};
        padding-left: 5px;
        padding-right: 5px;
        margin-right: 10px;
      }

      #clock {
        color: ${text};
      }

      #custom-launcher {
        font-size: 16px;
        color: ${text};
        font-weight: bold;
        margin-left: 15px;
        padding-right: 10px;
      }
    '';
  };
}
