{users, pkgs, ...}:

{
  users.users.nixosdevbox = {
    packages = with pkgs; [
    ];
  };
}
