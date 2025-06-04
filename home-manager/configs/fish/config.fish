source ~/.config/fish/functions/mkcd.fish

if status is-interactive
    fish_vi_key_bindings
    oh-my-posh init fish --config ~/.config/ohmyposh/pk10-nord.toml | source
    eval "$(atuin init fish --disable-up-arrow)"
    eval "$(zoxide init fish)"
    set fish_greeting
    function fish_mode_prompt; end
end
