{
  users,
  lib,
  pkgs,
  ...
}:

{
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "webstorm"
      "pycharm-community-bin"
      "raycast"
      "slack"
      "obsidian"
      "spotify"
    ];
  users.users.przemyslawbeigert = {
    packages = with pkgs; [
      jetbrains.webstorm
      jetbrains.pycharm-community-bin
    ];
  };

}
