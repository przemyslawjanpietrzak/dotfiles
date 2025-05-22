{
  description = "Example Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
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
      nix-homebrew,
      homebrew-core,
      homebrew-cask,
      home-manager,
    }:
    let
      user = "przemyslawbeigert";
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};

      configuration =
        { pkgs, ... }:
        {

          imports = [
            ./brew.nix
            ./macos.nix
            ./devtools.nix
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
      darwinConfigurations."Przemyslaws-MacBook-Air" = nix-darwin.lib.darwinSystem {
        modules = [
          configuration
          nix-homebrew.darwinModules.nix-homebrew
          {
            nix-homebrew = {
              taps = {
                "homebrew/homebrew-core" = homebrew-core;
                "homebrew/homebrew-cask" = homebrew-cask;
              };
            };
          }
        ];
      };

      darwinPackages = self.darwinConfigurations."Przemyslaws-MacBook-Air".pkgs;
    };
}
