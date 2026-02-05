{
  description = "";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          name = "python-psycopg-dev-shell";
          buildInputs = [
            pkgs.python313
            pkgs.postgresql
            pkgs.libffi
            pkgs.pkg-config
          ];
          shellHook = ''
            echo "Welcome to the Python + PostgreSQL dev shell!"
            echo "pg_config is available: $(which pg_config)"
          '';
        };
      }
    );
}
