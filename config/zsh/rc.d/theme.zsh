# usage: light! -- Sets terminal color scheme to Solarized light
light!() {
  export BG=light
  eval "$(dircolors "$ZPLUG_HOME/repos/seebi/dircolors-solarized/dircolors.ansi-light")"
}

# usage: dark! -- Sets terminal color scheme to Solarized dark
dark!() {
  export BG=dark
  eval "$(dircolors "$ZPLUG_HOME/repos/seebi/dircolors-solarized/dircolors.256dark")"
}

# Solarized dircolors for BSD ls
# Source: https://github.com/seebi/dircolors-solarized/issues/10#issue-1093648
if [[ "$OSTYPE" =~ (^darwin|bsd$) ]]; then
  export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi

if command -v dircolors &>/dev/null; then
  zplug "seebi/dircolors-solarized", ignore:'*'

  if [ "${BG:-dark}" = "light" ]; then
    light!
  else
    dark!
  fi
fi
