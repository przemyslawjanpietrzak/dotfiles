{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    {
      # Please replace my-nixos with your hostname
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./ssh.nix
          ./devtools.nix
          ./docker.nix
          ./i3wm.nix
          ./k8s.nix
          ./ide.nix

          ../common/cli.nix
          ../common/shell.nix
          ../common/node.nix
          ../common/python.nix
        ];
      };
    };
}
