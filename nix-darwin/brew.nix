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
      "zed"

      # fonts
      "font-fira-code-nerd-font"

      # other tools
      "alt-tab"
      "raycast"
      "shottr"
      "aldente"
      "flux"
      "nordvpn"

      "tunnelblick"

      # media
      "vlc"
      "transmission"
      "spotify"

      # communicator
      "signal"
      "whatsapp"
    ];

  };
}
