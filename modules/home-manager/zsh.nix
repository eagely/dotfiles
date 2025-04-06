{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
      os = "nh os switch";
      hs = "nh home switch";
      h = "vim ~/dotfiles/home.nix && hs";
      s = "vim ~/dotfiles/configuration.nix && os";
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

