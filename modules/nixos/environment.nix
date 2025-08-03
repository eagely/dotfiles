{ pkgs, ... }:

{
  environment = {
    variables = {
      EDITOR = "vim";
      FLAKE = "/home/eagely/dotfiles";
      NH_FLAKE = "/home/eagely/dotfiles";
    };

    sessionVariables = {
      WRL_NO_HARDWARE_CURSORS = "1";
      WRL_RENDERER_ALLOW_SOFTWARE = "1";
      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      __NV_PRIME_RENDER_OFFLOAD = "1";
      __NV_PRIME_RENDER_OFFLOAD_PROVIDER = "NVIDIA-G0";
      __VK_LAYER_NV_optimus = "NVIDIA_only";
      QT_QPA_PLATFORMTHEME = "qt6ct";
      QT_QPA_PLATFORM = "wayland";
      QT_AUTO_SCREEN_SCALE_FACTOR = "1";
      QT_ENABLE_HIGHDPI_SCALING = "1";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      XDG_CONFIG_HOME = "/home/eagely/.config";
      XDG_CACHE_HOME = "/home/eagely/.cache";
      XDG_DATA_HOME = "/home/eagely/.local/share";
    };

    shells = with pkgs; [ zsh ];
  };
}
