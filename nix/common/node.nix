{environment, pkgs, ...}:

{
    environment.systemPackages = with pkgs; [
        bun
        deno
        fnm
        nodejs_20
        pnpm
        yarn-berry
    ];
}
