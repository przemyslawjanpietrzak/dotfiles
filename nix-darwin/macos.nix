{ system, services, environment, launchd, pkgs, ... }:

{
  services.sketchybar = {
     enable = true;
     package = pkgs.sketchybar;
   };

  system = {
    # configurationRevision = self.rev or self.dirtyRev or null;
    stateVersion = 6;
    defaults = {
      dock.autohide = true;
      dock.tilesize = 8;

      NSGlobalDomain = {
        AppleInterfaceStyle = "Dark";
        KeyRepeat = 3;
        InitialKeyRepeat = 20;
        ApplePressAndHoldEnabled = true;
        "com.apple.swipescrolldirection" = false;
        _HIHideMenuBar = true;
      };
      CustomUserPreferences = {
        "com.apple.screencapture" = {
          location = "~/Pictures/Screencapture";
          type = "png";
        };
        "com.apple.AdLib" = {
          allowApplePersonalizedAdvertising = false;
        };
      };
    };

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
      # swapLeftCtrlAndFn = true;
    };
  };
}
