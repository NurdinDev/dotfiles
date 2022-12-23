export DISABLE_AUTO_TITLE='true'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export TERM=${TERM:=xterm-256color}

VIM="$(which nvim)"
export EDITOR=$VIM
export VISUAL=$VIM
export GIT_EDITOR=$VIM

export LESS='-FRKX'
export XDG_CONFIG_HOME=$HOME/.config
export TMUXP_CONFIGDIR="${XDG_CONFIG_HOME}/tmuxp"

export DOTFILES=$HOME/.dotfiles
export WORK_DIR=$HOME/work
export PERSONAL_DIR=$HOME/personal

export TERM=xterm-256color
# @see: https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md#configuration-file
if which rg >/dev/null; then
  export RIPGREP_CONFIG_PATH=$DOTFILES/.config/rg/.ripgreprc
fi

export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Added by n-install (see http://git.io/n-install-repo).
if [ -d "$HOME/n" ]; then
  export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
fi

path+=(
  "/usr/local/bin"
  "/usr/local/sbin"
  "$HOME/.local/bin"
  "$HOME/.cargo/bin"
  "$HOME/.npm-global/bin"
  "$HOME/bin"
  "$HOME/go/bin"
)

if [ -d "$HOME/bin" ] ; then
  path+=("$HOME/bin")
fi

export MANPATH="/usr/local/man:$MANPATH"
if which nvim >/dev/null; then
  export MANPAGER='nvim +Man!'
fi



# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'

if ! type "$bat" > /dev/null; then
  export BAT_THEME="TwoDark"
fi

# Setting ag as the default source for fzf

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
# Need to escape the "!" and "*" characters using /
# --no-ignore = this flag shows node modules etc
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
export FZF_CTRL_T_COMMAND='git ls-files --deleted --modified --others --exclude-standard'
# https://github.com/catppuccin/fzf
# latte
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
# --color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
# --color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39"


# Frappé
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
# --color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
# --color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"


# Macchiato
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

# Mocha
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
# --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
# --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# To apply to the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Don't open FZF in a separate split in tmux
export FZF_TMUX=0

if [ -d "$HOME/.cargo" ] && [ -s "$HOME/.cargo/env" ]; then
  # load cargo env
  source "$HOME/.cargo/env"
fi;
