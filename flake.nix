{
  description = "my nixos configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, home-manager, fenix, ... } @ inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    f = fenix.packages.${system};
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs system; };
      modules = [
        ./nixos/configuration.nix
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ fenix.overlays.default ];
          environment.systemPackages = [
            fenix.packages.${system}.latest.toolchain
            pkgs.rust-analyzer-nightly
          ];
        })
      ];
    };

    homeConfigurations.eagely = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        ./home-manager/home.nix
        inputs.catppuccin.homeModules.catppuccin
      ];
      extraSpecialArgs = { inherit inputs system; };
    };
  };
}
