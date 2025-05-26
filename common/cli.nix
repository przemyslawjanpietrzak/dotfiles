{ environment, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # cli
    atuin
    bat
    choose
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
    pastel
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
