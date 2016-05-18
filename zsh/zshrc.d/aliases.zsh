alias git=hub

case "$OSTYPE" in
darwin*|*bsd)
  export CLICOLOR=1
  alias ls='ls -p'
  ;;
linux*)
  alias ls='ls --color=auto -p'
  ;;
esac

alias grep='grep -Hn --color=auto'
alias tree='tree -C'

alias vi='nvim'
alias vim='nvim'
