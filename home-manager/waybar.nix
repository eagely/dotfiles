{
  config,
  pkgs,
  ...
}: {
  programs.waybar = {
    enable = true;
    settings.main = {
      layer = "top";
      position = "top";
      height = 30;
      modules-left = [
        "hyprland/workspaces"
      ];
      modules-center = [
        "clock"
      ];
    };
  };
}
