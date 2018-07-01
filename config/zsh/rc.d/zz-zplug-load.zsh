# Ask to bundle zsh plugins.
if ! zplug check --verbose; then
  printf "Install zplug bundle? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Finally, load the plugins.
zplug load
