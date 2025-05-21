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
          autoUpdate = true; # Equivalent to `brew update`
          upgrade = true;    # Equivalent to `brew upgrade`
         # cleanup = "zap";   # or "uninstall", to remove unmanaged packages
        };
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
      # "ghostty"
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
      "openvpn-connect"

      # media
      "vlc"
      "transmission"
      "spotify"

      # communicator
      "signal"
      # "whatsapp"
    ];

  };
}
