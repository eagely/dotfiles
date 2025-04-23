{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment = {
    systemPackages = with pkgs; [
      # system packages
      mako
      wl-clipboard
      swayfx
      swaybg
      vulkan-tools
      libGL
      libGLU
      cudatoolkit
      zsh
      oh-my-zsh
      home-manager
      nh
      pipewire
      pavucontrol
      pulseaudio
      bluez
      slurp
      grim
      xdg-desktop-portal
      xdg-desktop-portal-wlr
      kdePackages.xwaylandvideobridge

      # programming related
      gcc
      ninja
      gdb
      clang
      cargo
      rustc
      rustfmt
      rust-analyzer
      go
      ghc
      python3
      typst
      tinymist
      nil
      alejandra
      pkg-config 
      qtcreator
      kdePackages.qt6ct
      qt6.qtsvg
      papirus-icon-theme
      qbe
      gnumake
      zed-editor
      jdk

      # cli utils
      vim
      wget
      curl
      git
      file
      tree
      unzip
      nettools
      pciutils
      usbutils
      ripgrep
      fd
      fastfetch
      glxinfo
      zoxide
      starship
      brightnessctl
      eza
      john
      hashcat
      qbittorrent-nox
      tmux
      exiftool
      xdg-utils
      pfetch

      # gui apps
      kitty
      vesktop
      prismlauncher
      steam
      wofi
      kdePackages.kdenlive
      evince
      vlc
      geogebra6
      firefox
      obs-studio
      github-desktop
      feh
      signal-desktop
    ];
  };
}
