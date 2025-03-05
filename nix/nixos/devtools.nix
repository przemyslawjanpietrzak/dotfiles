
{users, pkgs, ...}:

{

    programs.nix-ld.enable = true;
    programs.nix-ld.libraries = with pkgs; [
      stdenv.cc.cc.lib
    ];

  users.users.nixosdevbox = {
    packages = with pkgs; [
      brave
      ghostty
      jetbrains.pycharm-community-src
      obsidian
      xclip
      zed-editor
      keepassxc

      nix-index
    ];
  };
}
