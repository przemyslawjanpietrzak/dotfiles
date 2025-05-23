{ users, pkgs, ... }:

{
  users.users.przemyslawjanbeigert = {
    packages = with pkgs; [
      aerospace
    ];
  };

}
