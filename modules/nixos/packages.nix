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
      brightnessctl
      eza
      john
      hashcat
      qbittorrent-nox
      tmux
      exiftool

      # gui apps
      kitty
      floorp
      vesktop
      prismlauncher
      steam
      wofi
      kdePackages.kdenlive
      evince
      vlc
      geogebra6
    ];
  };
}
