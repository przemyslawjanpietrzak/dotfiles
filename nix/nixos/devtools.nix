
{users, pkgs, ...}:

{
  users.users.nixosdevbox = {
    packages = with pkgs; [
      brave
      ghostty
      jetbrains.pycharm-community-src
      xclip
      zed-editor
    ];
  };
}
