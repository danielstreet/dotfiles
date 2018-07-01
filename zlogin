# ~/.zlogin is sourced after ~/.zshrc and should contain commands that should
# only be executed in login shells.
#
# See http://zsh.sourceforge.net/Intro/intro_3.html

if [ -d "$XDG_CONFIG_HOME/zsh/login.d" ]; then
  for loginfile in "$XDG_CONFIG_HOME/zsh/login.d/"*.zsh; do
    source "$loginfile"
  done
fi

# Use .zlogin.local for host-specific tweaks that you don't want in your public,
# versioned repository.
if [ -r "$HOME/.zlogin.local" ]; then
  source "$HOME/.zlogin.local"
fi
