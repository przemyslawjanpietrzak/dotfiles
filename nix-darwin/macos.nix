{ system, ... }:

{
  system = {
    # configurationRevision = self.rev or self.dirtyRev or null;
    stateVersion = 6;
    defaults = {
      dock.autohide = true;
      dock.tilesize = 8;

      NSGlobalDomain.AppleInterfaceStyle = "Dark";
      NSGlobalDomain.KeyRepeat = 100;
      NSGlobalDomain."com.apple.swipescrolldirection" = true;
      NSGlobalDomain._HIHideMenuBar = true;
    };

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
      swapLeftCtrlAndFn = true;
    };
  };
}
