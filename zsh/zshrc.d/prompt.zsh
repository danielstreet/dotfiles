# Enable command line syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting", nice:10

# Use pure prompt theme
zplug "sindresorhus/pure"

function {
  local funcdir="$ZPLUG_HOME/functions"

  if [[ -r "$funcdir/prompt_pure_setup" ]] && [[ -r "$funcdir/async" ]]; then
    return
  fi

  mkdir -p "$funcdir"
  ln -fs ../repos/sindresorhus/pure/async.zsh "$funcdir/async"
  ln -fs ../repos/sindresorhus/pure/pure.zsh "$funcdir/prompt_pure_setup"
}
