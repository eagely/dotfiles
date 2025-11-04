{ config, pkgs, ... }:

{
  xdg.configFile."wpaperd/config.toml".text = ''
    [default]
    duration = "30m"
    mode = "stretch"

    [any]
    path = "${config.xdg.userDirs.pictures}/wallpapers"
  '';
}
