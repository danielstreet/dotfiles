# Add our functions to the autoload search path.
fpath=("$XDG_CONFIG_HOME/zsh/functions.d" $fpath)
autoload -U $XDG_CONFIG_HOME/zsh/functions.d/*(:t)
