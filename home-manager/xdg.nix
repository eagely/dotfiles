{ lib, pkgs, config, ... }:

{
  xdg = {
    enable = true;

      userDirs = {
        enable = true;
        desktop = "${config.home.homeDirectory}/mix";
        documents = "${config.home.homeDirectory}/mix";
        download = "${config.home.homeDirectory}/downloads";
        music = "${config.home.homeDirectory}/music";
        pictures = "${config.home.homeDirectory}/pictures";
        publicShare = "${config.home.homeDirectory}/mix";
        templates = "${config.home.homeDirectory}/mix";
        videos = "${config.home.homeDirectory}/videos";
      };
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

