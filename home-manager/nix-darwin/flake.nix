{
  description = "Home Manager configuration of przemyslawbeigert";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."przemyslawbeigert" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ./user.nix
          ../common/home.nix
        ];
      };
    };
}
