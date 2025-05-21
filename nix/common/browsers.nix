{users, pkgs, environment, ...}:

{
  users.users.przemyslawbeigert = {
    packages = with pkgs; [
      brave
      # chromium
      # firefox
    ];
  };

}
