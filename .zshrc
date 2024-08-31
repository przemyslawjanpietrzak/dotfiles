export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-$HOME/.config/lvim}"
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-$HOME/.local/share/lunarvim}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-$HOME/.cache/lvim}"
export PATH=/Users/przemyslawbeigert/.local/bin:$PATH

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/p10k-nord.toml)"

# fnm
export PATH="/Users/przemyslawbeigert/Library/Caches/fnm_multishells/43771_1661839090515/bin":$PATH
export FNM_MULTISHELL_PATH="/Users/przemyslawbeigert/Library/Caches/fnm_multishells/43771_1661839090515"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="/Users/przemyslawbeigert/Library/Application Support/fnm"
export FNM_LOGLEVEL="info"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_ARCH="arm64"
rehash

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# z
eval "$(zoxide init zsh)"                                                                                                                                                                                                                                                                                                                        127 ✘  12:35:40

# bun completions
[ -s "/Users/przemyslawbeigert/.bun/_bun" ] && source "/Users/przemyslawbeigert/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#aliases
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias vi="lvim"
alias lvi="lvim"
alias pn="pnpm"
alias lg="lazygit"
alias pping="prettyping"

