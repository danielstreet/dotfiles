# aliases.zsh sets up shell aliases for preferred commands and sets sensible
# defaults to enable things like colorized output.

# Usage: alias_preference NAME COMMAND ...
#
# Create an alias for the first available command. If no preferred commands are
# available, no alias will be created.
function alias_preference {
  local name="$1"
  shift

  for cmd in "$@"; do
    if command -v "$cmd" &>/dev/null; then
      alias "$name"="$cmd"
      break
    fi
  done
}

# Create aliases to enhanced alternatives
alias_preference dircolors gdircolors
alias_preference git hub
alias_preference ls gls
alias_preference make colormake
alias_preference top htop
alias_preference vi nvim vim
alias_preference vim nvim

unset alias_preference

# Aliases for colorized commands
alias grep='grep -Hn --color=auto'
alias tree='tree -C'

case "$OSTYPE" in
darwin*|*bsd)
  export CLICOLOR=1
  alias ls='ls -p'
  ;;
linux*)
  alias ls='ls --color=auto -p'
  ;;
*)
  echo "aliases: unknown OSTYPE '$OSTYPE'" >&2
  ;;
esac
