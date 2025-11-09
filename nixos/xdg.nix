{pkgs, ...}: {
  systemd.user.services.xdg-desktop-portal-gtk.enable = true;
  systemd.user.services.xdg-desktop-portal-hyprland.enable = true;
  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;

      extraPortals = [
        pkgs.xdg-desktop-portal-hyprland
        pkgs.xdg-desktop-portal-gtk
      ];

      config = {
        common = {
          default = ["hyprland" "gtk"];
        };
        "org.freedesktop.impl.portal.OpenURI".default = ["gtk"];
        "org.freedesktop.impl.portal.FileChooser".default = ["gtk"];
      };
    };
  };
}
