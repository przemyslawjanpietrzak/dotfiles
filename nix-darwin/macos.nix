{ system, ... }:

{
  system = {
    # configurationRevision = self.rev or self.dirtyRev or null;
    stateVersion = 4;
    defaults = {
      dock.autohide = true;
      dock.tilesize = 8;
      screencapture.location = "~/Pictures/screenshots";
      NSGlobalDomain.AppleInterfaceStyle = "Dark";
      # NSGlobalDomain.KeyRepeat = 100;
      NSGlobalDomain."com.apple.swipescrolldirection" = false;
      NSGlobalDomain._HIHideMenuBar = true;
    };

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };
}
