#!/usr/bin/env zsh

# Source Zap's configuration if it is found
[ -f "$ZDOTDIR/zap/zap.zsh" ] && source "$ZDOTDIR/zap/zap.zsh"

# Displays Neofetch on shell startup
neofetch

# Set the prompt theme
PROMPT="%B%F{cyan}[%n@%M %f%2~%F{cyan}] %b%f"

# Redirects nohup output
alias nohup="nohup > ~/.cache/nohup.out 2>&1"

# Lets grep use automatic colors
alias grep="grep --color=auto"

# Execute auto complete suggestions
bindkey "\E[13;2u" autosuggest-execute # Shift+Enter
bindkey "\E[13;5u" autosuggest-accept # Ctrl+Enter

# Execute output clearing
bindkey "^l" clear_output

# Make GPG use the current terminal when singing
export GPG_TTY=$(tty)

# Clear terminal output
clear_output() { clear; zle reset-prompt }
zle -N clear_output
