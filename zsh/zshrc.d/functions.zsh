# Add our zfunctions/ directory to the search path, so they can be autoloaded.
fpath=("$ZDOTDIR/.zsh/zfunctions" $fpath)
autoload -U $ZDOTDIR/.zsh/zfunctions/*(:t)
