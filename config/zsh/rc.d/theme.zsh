# Solarized dircolors for BSD ls
# Source: https://github.com/seebi/dircolors-solarized/issues/10#issue-1093648
if [[ "$OSTYPE" =~ (^darwin|bsd$) ]]; then
  export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi

if command -v dircolors &>/dev/null; then
  zplug "seebi/dircolors-solarized", ignore:'*'
  eval "$(dircolors "$ZPLUG_HOME/repos/seebi/dircolors-solarized/dircolors.256dark")"
fi
