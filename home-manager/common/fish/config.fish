if status is-interactive
    fish_vi_key_bindings
    function fish_mode_prompt; end
    eval "$(oh-my-posh init fish --config $HOME/.config/ohmyposh/p10k.toml)"
    eval "$(atuin init fish --disable-up-arrow )" #--disable-ctrl-r
    set fish_greeting
    zoxide init fish | source
end
