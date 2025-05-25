{
  users,
  pkgs,
  lib,
  ...
}:

{
  users.users.nixosdevbox = {
    packages = with pkgs; [
      jetbrains.pycharm-community-src
      jetbrains.idea-community-src
      zed-editor
    ];
  };

}
