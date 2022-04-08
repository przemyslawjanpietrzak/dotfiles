source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# plugins
antigen bundle git
antigen bundle command-not-found
antigen bundle yarn
antigen bundle vi-mode
antigen bundle iterm2
antigen bundle wd
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme wesbos/Cobalt2-iterm

#aliases
alias le="exa"
alias l='exa -1a'                 # Lists in one column, hidden files.
alias ll='exa -l'                 # Lists human readable sizes.
alias lr='ll -R'                  # Lists human readable sizes, recursively.
alias la='ll -a'                  # Lists human readable sizes, hidden files.
alias lm='la | "$PAGER"'          # Lists human readable sizes, hidden files through pager.
alias lx='ll --sort=Extension'    # Lists sorted by extension (GNU only).
alias lk='ll --sort=size -r'      # Lists sorted by size, largest last.
alias lt='ll --sort=modified -r'  # Lists sorted by date, most recent last.
alias lc='lt -m'                  # Lists sorted by date, most recent last, shows change time.
alias lu='lt -u'                  # Lists sorted by date, most recent last, shows access time.
alias sl='ls'
alias tree='exa --tree'

alias vi='nvim'

alias lg="lazygit"

alias pping="~/stuff/prettyping"
alias jless="~/stuff/jless"
alias neovide="~/stuff/neovide/target/release/neovide" 

# Tell Antigen that you're done.
antigen apply

