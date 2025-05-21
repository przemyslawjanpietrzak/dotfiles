{users, lib, pkgs, ...}:

{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "webstorm"
        "pycharm-community-src"
        "raycast"
        #"raycast-1.90.0"
        "slack"
        "obsidian"
      ];
  users.users.przemyslawbeigert = {
    packages = with pkgs; [
      jetbrains.webstorm
      # jetbrains.pycharm-community-src

      zed-editor
    ];
  };

}
