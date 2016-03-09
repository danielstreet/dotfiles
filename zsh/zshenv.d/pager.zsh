# Use less as the default pager.
export PAGER="less"

# Less options:
#   -F - Automatically exit if the entire file can be displayed on one screen.
#   -R - Output ANSI color escape sequences in raw form.
#   -X - Needed by -F to display files without an alternate screen.
export LESS="-FRX"
