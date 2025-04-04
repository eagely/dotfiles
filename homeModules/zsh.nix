{
    programs.zsh = {
      enable = true;
      shellAliases = {
        ll = "ls -l";
        ".." = "cd ..";
        rebuild = "nh os switch";
        homecfg = "vim ~/dotfiles/home.nix && rebuild";
        syscfg = "vim ~/dotfiles/configuration.nix && rebuild";
      };
      initExtra = "
        bindkey -e
      ";
    };
}
