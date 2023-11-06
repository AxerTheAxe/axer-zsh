#!/usr/bin/zsh

# This file is for bootstrapping and configuring Zap, 
# a package manager for Zsh

# Bootstrap Zap
if [ -f "$HOME/.local/share/zap/zap.zsh" ]; then
  source "$HOME/.local/share/zap/zap.zsh"
else
  # Backup this zshrc
  cp "$ZDOTDIR/.zshrc" "$ZDOTDIR/.zshrc.old"

  # Install Zap
  zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

  # Remove Zap's zshrc
  rm "$ZDOTDIR/.zshrc"
  # Restore this zshrc
  mv "$ZDOTDIR/.zshrc.old" "$ZDOTDIR/.zshrc"

  # Reset session
  source "$ZDOTDIR/.zshrc"
  clear
  echo "Finished setting up Zsh."
fi

# Zap plugins...
# ZshAutoSuggestions:
# Command suggesetions for Zsh
plug "zsh-users/zsh-autosuggestions"

# ZshAutoPair:
# Automatic closing for pair characters
plug "hlissner/zsh-autopair"

# SuperCharge:
# Feature overhaul for Zsh
plug "zap-zsh/supercharge"

# ZshSyntaxHighlighting:
# Command highlighting for Zsh
plug "zsh-users/zsh-syntax-highlighting"
