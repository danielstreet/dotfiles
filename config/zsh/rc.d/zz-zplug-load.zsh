# Ask to bundle zsh plugins.
if ! zplug check; then
  if read -q "?Install zplug bundle? [y/N] "; then
    echo
    zplug install
  fi
fi

# Finally, load the plugins.
zplug load
