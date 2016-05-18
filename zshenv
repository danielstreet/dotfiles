# ~/.zshenv is the first startup file that zsh will read commands from. It is
# sourced on all invocations of the shell. As such, it should not contain
# commands that produce output or assume the shell is attached to a TTY.
#
# See http://zsh.sourceforge.net/Intro/intro_3.html

# ZDOTDIR defaults to $HOME when unset. See script/zsh for an example overriding
# this path to point to the local checkout.
ZDOTDIR="${ZDOTDIR:-$HOME}"

# Use nvim as the default editor.
export EDITOR="nvim"

# zsh configs are spread out across partials under zsh/zshenv.d/
for envfile in "$ZDOTDIR/.zsh/zshenv.d/"*.zsh; do
  source "$envfile"
done

# Use .zshenv.local for secrets and host-specific tweaks that you don't want in
# your public, versioned repository.
if [[ -r "$ZDOTDIR/.zshenv.local" ]]; then
  source "$ZDOTDIR/.zshenv.local"
fi