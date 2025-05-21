{
  users,
  virtualisation,
  environment,
  pkgs,
  ...
}:

{
  virtualisation.docker.enable = true;
  users.users.nixosdevbox = {
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
  };

  environment.systemPackages = with pkgs; [
    docker
  ];
}
