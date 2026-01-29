{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    {
      # Please replace my-nixos with your hostname
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          # ./configuration.nix
          ./ssh.nix
          ./devtools.nix
          ./docker.nix
          ./i3wm.nix
          ./ide.nix

          ../common/cli.nix
          ../common/k8s.nix
          ../common/shell.nix
          ../common/node.nix
          ../common/python.nix
        ];
      };
    };
}
