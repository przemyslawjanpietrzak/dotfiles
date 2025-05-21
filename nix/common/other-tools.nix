{users, pkgs, lib, ...}:

{

  users.users.przemyslawbeigert = {
    packages = with pkgs; [
      alt-tab-macos
      keepassxc
      obsidian
      # raycast
      slack
    ];
  };

}
