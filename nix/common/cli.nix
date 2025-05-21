{ environment, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # cli
    atuin
    bat
    dust
    fd
    fzf
    delta
    htop
    httpie
    prettyping
    jq
    just
    lsd
    procs
    ripgrep
    rm-improved
    sd
    sshs
    tldr
    wget
    yazi
    zoxide
    zellij

    # aerospace
    oh-my-posh

    imagemagick

    lunarvim

    # git
    git
    gitflow
    lazygit
    gh

    # ssh
    openssh
    openvpn
    sshs

    nixfmt-rfc-style
  ];
}
