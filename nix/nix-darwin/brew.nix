{ ... }:
{
  nix-homebrew = {
    autoMigrate = true;
    enable = true;


 user = "przemyslawbeigert";
  };
  homebrew = {
    enable = true;
    onActivation = {
          autoUpdate = true;
          upgrade = true;
          # cleanup = "zap";
        };
    brews = [
      "yt-dlp"
    ];
    casks = [
      # # browsers
      "chromium"
      "firefox"

      # # dev tools
      "zed"

      # # fonts
      "font-fira-code-nerd-font"

      # # other tools
      "alt-tab"
      "raycast"
      "flux"
      "nordvpn"
      "shottr"

      # # communicator
      "signal"
      # # "whatsapp"
    ];

  };
}
