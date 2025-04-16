{ lib, pkgs, ... }:

{
  xdg = {
    enable = true;

    mimeApps = {
      enable = true;
      defaultApplications = {
        "text/html" = "firefox.desktop";
        "x-scheme-handler/http" = "firefox.desktop";
        "x-scheme-handler/https" = "firefox.desktop";
        "x-scheme-handler/about" = "firefox.desktop";
        "x-scheme-handler/mailto" = "firefox.desktop";
      };
    };

    desktopEntries = {
      firefox = {
        exec = "${lib.getExe pkgs.firefox} %U";
        genericName = "firefox";
        name = "firefox";
        type = "Application";
        terminal = false;
      };
    };
  };
}

