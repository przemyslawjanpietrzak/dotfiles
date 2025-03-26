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
      "yt-dlp"
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
      "openvpn-conect"

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
