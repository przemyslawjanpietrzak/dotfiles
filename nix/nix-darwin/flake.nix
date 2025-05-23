{
  description = "Example Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nix-darwin,
      nixpkgs,
      home-manager,
    }:
    let
      user = "przemyslawjanbeigert";
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};

      configuration =
        { pkgs, ... }:
        {

          imports = [
            ./macos.nix
            ../common/cli.nix
            ../common/ide.nix
            ../common/node.nix
            ../common/media.nix
            ../common/shell.nix
            ../common/browsers.nix
          ];

          services.nix-daemon.enable = true;
          nix.settings.experimental-features = "nix-command flakes";

          nixpkgs.hostPlatform = "aarch64-darwin";

          system.configurationRevision = self.rev or self.dirtyRev or null;
        };
    in
    {
      darwinConfigurations."Przemyslaws-MacBook-Pro" = nix-darwin.lib.darwinSystem {
        modules = [
          configuration
        ];
      };

      darwinPackages = self.darwinConfigurations."Przemyslaws-MacBook-Pro".pkgs;
    };
}
