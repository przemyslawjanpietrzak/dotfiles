{ config, pkgs, ... }:

{
  home.username = "przemyslawbeigert";
  home.homeDirectory = "/Users/przemyslawbeigert";
  home.stateVersion = "23.05";

  home.packages = [

  ];

  # home.file = {
  #   ".config/debug.txt".text = "44";
  # };

  # home.file.debug = {
  #   target = ".debug.toml";
  #   text = "45";
  # };

  home.sessionVariables = {
  };


  home.sessionPath = [
    "/run/current-system/sw/bin"
      "$HOME/.nix-profile/bin"
  ];

  programs.home-manager.enable = true;
  
}