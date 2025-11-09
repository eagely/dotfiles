{...}: {
  imports = [
    ./environment.nix
    ./hardware.nix
    ./networking.nix
    ./packages.nix
    ./system.nix
    ./xdg.nix
    ./users.nix
  ];
}
