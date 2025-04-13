{ pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.zsh.enable = true;

  security = {
    polkit.enable = true;
    rtkit.enable = true;
  };

  systemd.user.services.xdg-desktop-portal = {
    enable = true;
    description = "Desktop portal service";
  };

  systemd.user.services.xdg-desktop-portal-wlr = {
    enable = true;
    description = "Wayland desktop portal service";
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
    xserver = {
      videoDrivers = [ "nvidia" ];
      xkb = {
        layout = "us";
        variant = "";
      };
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber = {
        enable = true;
        extraConfig = {
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

  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      inter
      maple-mono.NF
      noto-fonts-emoji
      noto-fonts-cjk-sans
    ];
  };
}
