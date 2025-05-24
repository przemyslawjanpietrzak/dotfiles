{
  description = "nushell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.nu = pkgs.mkShell {
        packages = [ pkgs.nushell ];
        shellHook = ''
          nu
        '';
      };
    };
}
