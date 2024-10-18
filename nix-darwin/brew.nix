{ ... }:
{
  nix-homebrew = {
    autoMigrate = true;
    enable = true;


 user = "przemyslawbeigert";
  };
  homebrew = {
    enable = true;
    brews = [
      "docker"
    ];
    casks = [
      # browsers
      "brave-browser"
      "firefox"
      "google-chrome"
      "chromium"

      # dev tools
      "webstorm"
      "vscodium"
      "wezterm"
      "slack"
      "keepassxc"
      "obsidian"
      # "docker"

      # other tools
      "alt-tab"
      # "raycast"
      "shottr"
      "aldente"
      "flux"

      "tunnelblick"

      # media
      "vlc"
      "transmission"
      "spotify"

      # communicator
      # "signal"
      "whatsapp"
    ];

  };
}
