{ users, pkgs, ... }:

{
  users.users.przemyslawbeigert = {
    packages = with pkgs; [
      aerospace
    ];
  };

}
