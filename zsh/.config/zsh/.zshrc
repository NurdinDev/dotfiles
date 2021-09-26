
#!/bin/sh
export ZDOTDIR=$HOME/.config/zsh
HISTFILE=~/.zsh_history
setopt appendhistory

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP


# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search


# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-tmuxinator"

DEFAULT_TERM_BG="0x1e2127"
VIM_TERM_BG="#282a36"

term_scheme() {
 local COLOR="$1"
 
 if [[ -n "$TMUX" ]]; then
  echo -ne "\\ePtmux;\\e\\033]11;$COLOR\\007\\e\\\\"
 else
  echo -ne "\\033]11;$COLOR\\007"
 fi
}

v() {
 term_scheme $VIM_TERM_BG
 nvim "$@"
 term_scheme $DEFAULT_TERM_BG
}

# keybindings
bindkey -s '^o' 'lfcd\n'
bindkey -s '^a' 'bc -lq\n'
bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# starship
eval "$(starship init zsh)"
# Enable zoxide
eval "$(zoxide init zsh)"

# zsh-autosuggestions settings.
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Load / source zsh plugins.
. ${XDG_DATA_HOME}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
. ${XDG_DATA_HOME}/zsh-autosuggestions/zsh-autosuggestions.zsh
