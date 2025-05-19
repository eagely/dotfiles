{ pkgs, inputs, ... }:

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
      kdePackages.xdg-desktop-portal-kde
      kdePackages.xwaylandvideobridge

      # programming related
      gcc
      ninja
      gdb
      clang
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
      clippy

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
      ffmpeg
      cargo-msrv
      tokei

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
      inputs.zen-browser.packages."${system}".specific
      obs-studio
      github-desktop
      feh
      signal-desktop
      wine
      winetricks
      nwg-displays
    ];
    plasma6.excludePackages = with pkgs.kdePackages; [
      plasma-browser-integration
      konsole
      oxygen
    ];
  };
}
