{
  users,
  pkgs,
  lib,
  ...
}:

{
  environment = {
    variables = {
      "NIX_LD" = "/run/current-system/sw/share/nix-ld/lib/ld.so";
      "NIX_LD_LIBRARY_PATH" = "/run/current-system/sw/share/nix-ld/lib";
      "LD_LIBRARY_PATH" = "/run/current-system/sw/share/nix-ld/lib";
    };
  };

  environment.systemPackages = with pkgs; [
    python313
    uv
    poetry
    ruff
    black
    pipx
    pre-commit
  ];

  users.users.nixosdevbox = {
    packages = with pkgs; [
      jetbrains.pycharm-community-src
    ];
  };

  programs = {
    fish.shellAliases = {
      "po" = "poetry";
    };
  };

}
