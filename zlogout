# ~/.zlogout is sourced when login shells exit.
#
# See http://zsh.sourceforge.net/Intro/intro_3.html

# zsh configs are spread out across partials under zsh/zlogout.d/
for logoutfile in "$ZDOTDIR/.zsh/zlogout.d/"*.zsh; do
  source "$logoutfile"
done

# Use .zlogout.local for host-specific tweaks that you don't want in your
# public, versioned repository.
if [[ -r "$ZDOTDIR/.zlogout.local" ]]; then
  source "$ZDOTDIR/.zlogout.local"
fi
