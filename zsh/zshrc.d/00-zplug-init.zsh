# Override zplug directory to use $ZDOTDIR. This isolates installs of zplug to
# their dotfiles checkout.
ZPLUG_HOME="${ZPLUG_HOME:-$ZDOTDIR/.zplug}"

# Ask to before installing zplug.
if [[ ! -r "$HOME/.zplug/zplug" ]]; then
  read -q "?Install zplug? [y/N] " || return
  echo
  curl -fLo "$HOME/.zplug/zplug" --create-dirs git.io/zplug
  source "$HOME/.zplug/zplug"
  zplug update --self
  mkdir -p "$ZPLUG_HOME/zfunctions"
fi

source "$HOME/.zplug/zplug"

# Use zplug to install zplug
zplug "b4b4r07/zplug"

# Autoload zplug functions
fpath=("$ZPLUG_HOME/functions" $fpath)
