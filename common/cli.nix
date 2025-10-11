{ environment, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # cli
    atuin
    bat
    choose
    delta
    dust
    entr
    fd
    fzf
    htop
    httpie
    jq
    just
    lsd
    pastel
    prettyping
    procs
    ripgrep
    rm-improved
    sd
    sshs
    tldr
    wget
    yazi
    zellij
    zoxide

    oh-my-posh
    carapace

    imagemagick

    neovim

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
