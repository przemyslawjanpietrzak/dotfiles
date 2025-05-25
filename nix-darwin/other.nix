{ environment, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    yt-dlp
    ffmpeg
  ];
}
