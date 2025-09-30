##### ── Oh My Zsh core ──────────────────────────────────────────────────────
export ZSH="${ZSH:-$HOME/.oh-my-zsh}"
ZSH_THEME=""               # Use Starship for the prompt

plugins=(
  git
  fzf
  vi-mode
  kubectl
  kubectx
  docker
  docker-compose
  # External plugins (installed via git clone):
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

##### ── PATH/bootstrap ──────────────────────────────────────────────────────
# Homebrew (Apple Silicon / Intel detection)
if [[ -d /opt/homebrew/bin ]]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
elif [[ -d /usr/local/bin ]]; then
  export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
fi

# User bins
export PATH="$HOME/.local/bin:$HOME/.dotfiles/bin:$HOME/scripts:$PATH"

# Development tools
export BUN_HOME="$HOME/.bun"
export PATH="$BUN_HOME/bin:$PATH"
[[ -d "$HOME/.opencode/bin" ]] && export PATH="$HOME/.opencode/bin:$PATH"

##### ── Prompt (Starship) ───────────────────────────────────────────────────
export STARSHIP_LOG=error
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi

command -v flux >/dev/null && . <(flux completion zsh)

##### ── Shell modes, history & editor ──────────────────────────────────────
set -o vi
bindkey -v
export EDITOR=nvim
export VISUAL=nvim
setopt promptsubst

# History: big, deduped, shared
HISTSIZE=100000
HISTFILESIZE=200000
SAVEHIST=100000
HISTFILE=$HOME/.zsh_history
setopt hist_ignore_dups hist_ignore_space inc_append_history share_history append_history extended_glob hist_ignore_all_dups hist_find_no_dups hist_reduce_blanks

# Additional shell options
setopt AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS CORRECT AUTO_LIST AUTO_MENU ALWAYS_TO_END

##### ── Completion system ──────────────────────────────────────────────────
autoload -Uz compinit
zmodload zsh/complist
[[ -d "$HOME/.zsh_cache" ]] || mkdir -p "$HOME/.zsh_cache"
compinit -d "$HOME/.zsh_cache/zcompdump"

zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' \
  '+m:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}' \
  '+m:{_-}={-_}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

##### ── Tools: zoxide / fzf / mise / Atuin ──────────────────────────────────
# Zoxide (better cd)
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
fi

# FZF configuration (oh-my-zsh fzf plugin handles bindings/completions)
if command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --strip-cwd-prefix --exclude .git'
else
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git" 2>/dev/null || find . -type f'
fi
export FZF_DEFAULT_OPTS="--layout=reverse --border --height=80% --info=inline"
export BAT_THEME="Catppuccin-Mocha"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {} 2>/dev/null || cat {} 2>/dev/null || tree -C {} 2>/dev/null | head -200' --preview-window=right:60%"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200' --preview-window=right:60%"

# Mise (runtime manager)
if command -v mise &> /dev/null; then
    eval "$(mise activate zsh)"
fi

# Atuin (shell history)
if command -v atuin &> /dev/null; then
    export ATUIN_NOBIND="true"
    eval "$(atuin init zsh)"
    bindkey -M viins '^r' atuin-up-search-viins
fi

##### ── Keybindings / widgets ───────────────────────────────────────────────
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^x' edit-command-line

# Vi mode keybindings
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^N' down-line-or-history
# Autosuggestions accept (if plugin active)
bindkey -M viins '^E' autosuggest-accept 2>/dev/null || true

##### ── Private exports ─────────────────────────────────────────────────────
[[ -f ~/.private_exports ]] && source ~/.private_exports

##### ── Aliases ─────────────────────────────────────────────────────────────

# Kubernetes
alias k='kubectl'
alias kx='kubectx'
alias kn='kubens'

# Package managers
alias p='pnpm'
alias pi='pnpm install'
alias y='yarn'
alias yi='yarn install'

alias lg='lazygit'
alias ld='lazydocker'

##### ── Custom scripts ──────────────────────────────────────────────────────
[[ -f "$HOME/scripts/fzf-git.sh" ]] && source "$HOME/scripts/fzf-git.sh"
