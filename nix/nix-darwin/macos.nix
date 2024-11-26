{ system, ... }:

{
  system = {
    # configurationRevision = self.rev or self.dirtyRev or null;
    stateVersion = 4;
    defaults = {
      dock.autohide = true;
      dock.tilesize = 8;
      screencapture.location = "~/Pictures/screenshots";
    };

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };
}
