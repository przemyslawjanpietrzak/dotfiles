{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "homelab"; # Define your hostname.

  time.timeZone = "Europe/Amsterdam";
  environment.systemPackages = with pkgs; [
    vim
    bat
    git
    htop
    wget
    openssh
    docker
    just
  ];

  system.stateVersion = "25.05";

  users.users.homelab = {
    isNormalUser = true;
    description = "homelab";
  };

  # ssh
  users.users.homelab = {
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMLUu9ENqleZLYqwC8OpfLfNaHocfGExo/C6TTDerXbq przemyslawbiegert"
    ];
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings.PasswordAuthentication = false;
  };

  networking.firewall.allowedTCPPorts = [ 22 ];
  networking.firewall.enable = true;

  # docker
  virtualisation.docker.enable = true;
  users.users.homelab = {
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
  };

}
