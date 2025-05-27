{ ... }:

{
  imports = [
    ./git.nix
    ./kitty.nix
    ./mimeapps.nix
    ./ssh.nix
    ./starship.nix
    ./sway.nix
    ./theme.nix
    ./zoxide.nix
    ./zsh.nix
  ];
  xdg.configFile.nvim = {
    source = ./nvim;
    recursive = true;
  };
}
