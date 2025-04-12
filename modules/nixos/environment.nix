{ pkgs, ...}:

{
  environment = {
    variables = {
      EDITOR = "vim";
      FLAKE = "/home/eagely/dotfiles";
    };

    sessionVariables = {
      WRL_NO_HARDWARE_CURSORS = "1";
      WRL_RENDERER_ALLOW_SOFTWARE = "1";
      XDG_CURRENT_DESKTOP = "sway";
      XDG_SESSION_TYPE = "wayland";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      __NV_PRIME_RENDER_OFFLOAD = "1";
      __NV_PRIME_RENDER_OFFLOAD_PROVIDER = "NVIDIA-G0";
      __VK_LAYER_NV_optimus = "NVIDIA_only";
      QT_QPA_PLATFORM = "wayland";
      QT_STYLE_OVERRIDE = "adwaita-dark";
      QT_AUTO_SCREEN_SCALE_FACTOR = "1";
      QT_ENABLE_HIGHDPI_SCALING = "1";
      QT_QPA_PLATFORMTHEME = "qt5ct";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    };

    shells = with pkgs; [ zsh ];
  };
}
