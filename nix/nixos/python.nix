{users, pkgs, ...}:

{

  environment.systemPackages = with pkgs; [
    python314
    uv
    poetry
  ];
}
