{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
      vim = "nvim";
      os = "nh os switch";
      hs = "nh home switch";
      h = "vim ~/dotfiles/home-manager/home.nix && hs";
      s = "vim ~/dotfiles/nixos/configuration.nix && os";
      p = "vim ~/dotfiles/modules/nixos/packages.nix && os";
    };
    initExtra = ''
      bindkey -e
    '';
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };
  };
}

