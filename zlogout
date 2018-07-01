# ~/.zlogout is sourced when login shells exit.
#
# See http://zsh.sourceforge.net/Intro/intro_3.html

if [ -d "$XDG_CONFIG_HOME/zsh/logout.d" ]; then
  for logoutfile in "$XDG_CONFIG_HOME/zsh/logout.d/"*.zsh; do
    source "$logoutfile"
  done
fi

# Use .zlogout.local for host-specific tweaks that you don't want in your
# public, versioned repository.
if [ -r "$HOME/.zlogout.local" ]; then
  source "$HOME/.zlogout.local"
fi
