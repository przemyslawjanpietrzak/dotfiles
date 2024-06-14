# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-$HOME/.config/lvim}"
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-$HOME/.local/share/lunarvim}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-$HOME/.cache/lvim}"

# ln -s ~/.local/share/lunarvim/lvim ~/.config/nvim

source ~/stuff/antigen.zsh

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
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zoxide

# Load the theme.
antigen theme romkatv/powerlevel10k
# antigen theme wesbos/Cobalt2-iterm

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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

alias vi="nvim"
alias lvi="/Users/przemyslawbeigert/.local/bin/lvim"
alias pn="pnpm"
alias lg="lazygit"

alias pping="~/stuff/prettyping/prettyping"
alias ngrock="~/stuff/ngrock"
