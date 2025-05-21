{ environment, pkgs, ... }:

{
  users.users.nixosdevbox = {
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
    settings.PasswordAuthentication = false;
  };

  networking.firewall.allowedTCPPorts = [ 22 ];
  networking.firewall.enable = true;
}
