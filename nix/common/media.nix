{
  users,
  lib,
  pkgs,
  ...
}:

{
  users.users.przemyslawbeigert = {
    packages = with pkgs; [
      vlc-bin
      # spotify
      transmission_4
    ];
  };

}
