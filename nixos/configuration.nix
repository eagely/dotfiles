{ inputs, config, pkgs, ... }:

{
  imports = [
      ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  systemd.user.services.xdg-desktop-portal = {
    enable = true;
    description = "Desktop portal service";
  };

  systemd.user.services.xdg-desktop-portal-kde = {
    enable = true;
    description = "Wayland desktop portal service";
  };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    config.common.default = ["*"];
    extraPortals = [
      pkgs.xdg-desktop-portal-wlr
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
    configPackages = [
      pkgs.xdg-desktop-portal-wlr
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  security = {
    polkit.enable = true;
    rtkit.enable = true;
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Vienna";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_AT.UTF-8";
    LC_IDENTIFICATION = "de_AT.UTF-8";
    LC_MEASUREMENT = "de_AT.UTF-8";
    LC_MONETARY = "de_AT.UTF-8";
    LC_NAME = "de_AT.UTF-8";
    LC_NUMERIC = "de_AT.UTF-8";
    LC_PAPER = "de_AT.UTF-8";
    LC_TELEPHONE = "de_AT.UTF-8";
    LC_TIME = "de_AT.UTF-8";
  };

  services = {
    xserver.xkb = {
      layout = "us";
      variant = "";
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber = {
        enable = true;
        extraConfig ={
          bluetoothEnhancements = {
            "monitor.bluez.properties" = {
                "bluez5.enable-sbc-xq" = true;
                "bluez5.enable-msbc" = true;
                "bluez5.enable-hw-volume" = true;
                "bluez5.roles" = [ "a2dp_sink" "a2dp_source" ];
            };
          };
        };
      };
    };
  };

  users.users.eagely = {
    isNormalUser = true;
    description = "Artemiy Smirnov";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  nixpkgs.config.allowUnfree = true;

	hardware.nvidia.prime = {
    sync.enable = true;
    intelBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";
	};

  environment = {
    variables = {
      XDG_SESSION_TYPE = "wayland";
      XDG_CURRENT_DESKTOP = "sway";
    };

    sessionVariables = {
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      WRL_NO_HARDWARE_CURSORS = "1";
      WRL_RENDERER_ALLOW_SOFTWARE = "1";
      __NV_PRIME_RENDER_OFFLOAD="1";
      __NV_PRIME_RENDER_OFFLOAD_PROVIDER="NVIDIA-G0";
      __VK_LAYER_NV_optimus="NVIDIA_only";
      EDITOR = "vim";
      FLAKE="/home/eagely/dotfiles";
    };
  
    shells = with pkgs; [ zsh ];
  
    systemPackages = with pkgs; [
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
      kitty
      mako
      wl-clipboard
      swayfx
      swaybg
      glxinfo
      vulkan-tools
      zsh
      oh-my-zsh
      thefuck
      fastfetch
      floorp
      home-manager
      nh
      zoxide
      vesktop
      pipewire
      pavucontrol
      pulseaudio
      bluez
      slurp
      grim
      prismlauncher
      steam
      wofi
      xdg-desktop-portal
      xdg-desktop-portal-wlr
      kdePackages.xwaylandvideobridge
      kdePackages.kdenlive
      kdePackages.okular
      vlc
      brightnessctl
      geogebra6
    ];
  };
  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      maple-mono.NF
      noto-fonts-emoji
      noto-fonts-cjk-sans
    ];
  };

  services.xserver.videoDrivers = ["nvidia"];

  hardware = {
    graphics.enable = true;

    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.latest;
      modesetting.enable = true;
      open = true;
      nvidiaSettings = true;
    };
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };

  programs.zsh.enable = true;

  users.defaultUserShell = pkgs.zsh;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}
