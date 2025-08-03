{ pkgs, inputs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  environment = {
    systemPackages = with pkgs; [
      # system packages
      hyprland
      mako
      wl-clipboard
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
      qbe
      gnumake
      jdk
      stylua
      clang-tools
      jetbrains.webstorm
      jetbrains.idea-ultimate
      nodejs

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
      steam-run
      sl
      neovim
      github-cli
      bc

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
      feh
      signal-desktop
      wine
      winetricks
      nwg-displays
      protonvpn-gui
      qbittorrent
      unar
      anki
      discord
      keymapp
      gimp
      telegram-desktop
    ];
    plasma6.excludePackages = with pkgs.kdePackages; [
      plasma-browser-integration
      konsole
      oxygen
    ];
  };
}
