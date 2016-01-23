# The terminfo module helps with portability between different hosts and
# terminals by mapping capability names to their values.
#
# See man:terminfo(5) for more information.
zmodload zsh/terminfo

# Use vi mode
zplug "plugins/vi-mode", from:oh-my-zsh

# Home and End keys jump between beginning and end of command line
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# Shift-Tab navigates completions in reverse
bindkey "$terminfo[cbt]" reverse-menu-complete

# zsh-history-substring-search enables history searching and cycling on the
# command line, similar to Fish shell's history search feature.
zplug "zsh-users/zsh-history-substring-search"

# Bind UP and DOWN arrow keys
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Bind 'k' and 'j' in vi mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
