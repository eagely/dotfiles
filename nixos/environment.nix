{pkgs, ...}: {
  environment = {
    variables = {
      EDITOR = "nvim";
      FLAKE = "/home/eagely/dotfiles";
      NH_FLAKE = "/home/eagely/dotfiles";
    };

    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      WLR_RENDERER_ALLOW_SOFTWARE = "1";
      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
      __GLX_VENDOR_LIBRARY_NAME = "amd";
      QT_QPA_PLATFORMTHEME = "qt6ct";
      QT_QPA_PLATFORM = "wayland";
      QT_AUTO_SCREEN_SCALE_FACTOR = "1";
      QT_ENABLE_HIGHDPI_SCALING = "1";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      XCURSOR_THEME = "Bibata-Modern-Classic";
      XCURSOR_SIZE = "24";
      XDG_CONFIG_HOME = "/home/eagely/.config";
      XDG_CACHE_HOME = "/home/eagely/.cache";
      XDG_DATA_HOME = "/home/eagely/.local/share";
    };

    shells = with pkgs; [zsh];
  };
}
