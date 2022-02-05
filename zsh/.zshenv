export DISABLE_AUTO_TITLE='true'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

VIM="lvim"
export EDITOR=$VIM
export VISUAL=$VIM
export GIT_EDITOR=$VIM

export LESS='-FRKX'
export XDG_CONFIG_HOME=$HOME/.config
export TMUXP_CONFIGDIR="${XDG_CONFIG_HOME}/tmuxp"

export DOTFILES=$HOME/.dotfiles
export WORK_DIR=$HOME/work
export PERSONAL_DIR=$HOME/personal

# @see: https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md#configuration-file
if which rg >/dev/null; then
  export RIPGREP_CONFIG_PATH=$DOTFILES/.config/rg/.ripgreprc
fi

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

# To apply to the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Don't open FZF in a separate split in tmux
export FZF_TMUX=0

if [ -d "$HOME/.cargo" ] && [ -s "$HOME/.cargo/env" ]; then
  # load cargo env
  source "$HOME/.cargo/env"
fi;
