{environment, pkgs, ...}:

{
    environment.systemPackages = with pkgs; [

        # cli
        atuin
        bat
        dust
        fd
        fzf
        delta
        googler
        htop
        httpie
        prettyping
        jq
        just
        lsd
        procs
        ripgrep
        sd
        sshs
        tldr
        wget
        yazi
        zoxide

        # git
        git
        gitflow
        lazygit
        gh

        # ssh
        openssh
        sshs
    ];
}
