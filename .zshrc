# This script is for configuring the current 
# user's Zsh sessions

# Displays neofetch on shell startup
neofetch

# Sets the prompt theme
PROMPT="%B%F{cyan}[%n@%M %f%2~%F{cyan}] %b%f"

# Aliases...
#
# Force nohup to output to a dot file
# in the current users home directory
alias nohup="nohup > ~/.nohup.out 2>&1"
#
# Lets grep use automatic colors
alias grep="grep --color=auto"
#
# Force the user to confirm their choice
# before overwriting something
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# Special exports...
#
# Makes GPG use the current terminal
# when singing
export GPG_TTY=$(tty)
