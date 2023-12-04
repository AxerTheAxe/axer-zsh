#!/usr/bin/zsh

# This script is for configuring the current 
# user's Zsh sessions

# Source Zap config if it is found
[ -f "$ZDOTDIR/zap/zap.zsh" ] && source "$ZDOTDIR/zap/zap.zsh"

# Displays neofetch on shell startup
neofetch

# Sets the prompt theme
PROMPT="%B%F{cyan}[%n@%M %f%2~%F{cyan}] %b%f"

# Aliases...
# Force nohup to output to a dot file
# in the current users home directory
alias nohup="nohup > ~/.nohup.out 2>&1"

# Lets grep use automatic colors
alias grep="grep --color=auto"

# Force the user to confirm their choice
# before overwriting something
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# Bindings...
# Execute Zap autocomplete suggestions
bindkey "\E[13;2u" autosuggest-execute # Shift+Enter
bindkey "\E[13;5u" autosuggest-accept # Ctrl+Enter

# Execute output clearing function
bindkey "^l" clear_output

# Special exports...
# Makes GPG use the current terminal when singing
export GPG_TTY=$(tty)

# Functions...
# Clear terminal output
clear_output() { clear; zle reset-prompt }
zle -N clear_output
