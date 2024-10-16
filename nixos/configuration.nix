{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Warsaw";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pl_PL.UTF-8";
    LC_IDENTIFICATION = "pl_PL.UTF-8";
    LC_MEASUREMENT = "pl_PL.UTF-8";
    LC_MONETARY = "pl_PL.UTF-8";
    LC_NAME = "pl_PL.UTF-8";
    LC_NUMERIC = "pl_PL.UTF-8";
    LC_PAPER = "pl_PL.UTF-8";
    LC_TELEPHONE = "pl_PL.UTF-8";
    LC_TIME = "pl_PL.UTF-8";
  };

  services.xserver.enable = true;

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  services.xserver.xkb = {
    layout = "pl";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "pl2";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.defaultUserShell = pkgs.zsh;
  users.users.beigertnix = {
    isNormalUser = true;
    description = "beigert-nix";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [

    ];
    openssh.authorizedKeys.keys = [
     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMLUu9ENqleZLYqwC8OpfLfNaHocfGExo/C6TTDerXbq przemyslawbiegert"
    ];
  };


#zsh
 programs = {
    zsh = {
      enable = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
      ohMyZsh = {
        enable = true;
        theme = "robbyrussell";
        plugins = [
          "git"
          "kubectl"
          "helm"
          "docker"
          "vi-mode"
        ];
      };
    };
  };


  programs.firefox.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  virtualisation.docker.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    neovim
    bat
    home-manager
    git
    docker
    antidote
    python3
    openvpn
    zellij
   fd
   helix
   fzf
   ripgrep
    hstr
xclip

   nomad_1_7
   consul
   k3s_1_30
  ];



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

  system.stateVersion = "24.05"; # Did you read the comment?

}
