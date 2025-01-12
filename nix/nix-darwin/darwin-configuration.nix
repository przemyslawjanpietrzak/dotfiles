{ pkgs, ... }:

let
   x  = 42;
in  {
  imports = [ <home-manager/nix-darwin> ];
  services.nix-daemon.enable = true;

  programs.zsh.enable = true;
  programs.zsh.enableSyntaxHighlighting = true;

  system = {
    stateVersion = 4;

    defaults = {
      dock = {
        autohide = true;
        expose-group-by-app = true;
        tilesize = 8;
        largesize = 16;
      };
      screencapture.location = "~/Pictures/screenshots";
      NSGlobalDomain = {
        "com.apple.swipescrolldirection" = false;
      };
    };

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };


  users.users.przemyslawbeigert = {
    shell = "zsh";
    home = /Users/przemyslawbeigert;
  };

}
