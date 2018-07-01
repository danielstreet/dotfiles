# Point zplug root dir to Git submodule path.
ZPLUG_HOME="${ZPLUG_HOME:-$XDG_CONFIG_HOME/zsh/zplug}"

source "$ZPLUG_HOME/init.zsh"

# Autoload zplug functions
fpath=("$ZPLUG_HOME/functions" $fpath)
