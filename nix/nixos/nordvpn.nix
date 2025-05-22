{ config, pkgs, ... }:

{
  # ... other configuration options like imports, bootloader, users etc.

  # Enable the NordVPN service
  services.nordvpn = {
    enable = true;
    # Optional: Specify the package if needed (usually defaults to the stable one)
    # package = pkgs.nordvpn;
  };

  # You might also want the nordvpn package available directly in the environment
  # for user commands, although the service enable might pull it in implicitly
  # depending on NixOS version/setup. Explicitly adding it is safe.
  environment.systemPackages = with pkgs; [
    nordvpn
    # ... other system packages like wget, vim, etc.
  ];

  # ... rest of your configuration
}
