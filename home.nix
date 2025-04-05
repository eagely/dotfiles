{ config, pkgs, ... }:

{
  imports = builtins.map (file: ./homeModules/${file}) (builtins.filter(file: builtins.match ".*\\.nix$" file != null) (builtins.attrNames (builtins.readDir ./homeModules)));

  home.username = "eagely";
  home.homeDirectory = "/home/eagely";

  home.stateVersion = "25.05";

  home.file = {
  "assets/wallpapers/wallpaper.png".source = ./homeModules/assets/wallpapers/wallpaper.png;
  "assets/themes/wofi/mocha.css".source = ./homeModules/assets/themes/wofi/mocha.css;
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/eagely/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
