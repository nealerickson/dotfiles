# FZF Configuration
# Detect fzf installation path (Homebrew on macOS, or standard Linux paths)
if [[ -d "/opt/homebrew/opt/fzf" ]]; then
  FZF_BASE="/opt/homebrew/opt/fzf"
elif [[ -d "/usr/local/opt/fzf" ]]; then
  FZF_BASE="/usr/local/opt/fzf"
elif [[ -d "$HOME/.fzf" ]]; then
  FZF_BASE="$HOME/.fzf"
fi

# Note: Key bindings are sourced in zshrc.symlink AFTER Oh My Zsh
# to prevent Oh My Zsh from overriding fzf's Ctrl+R binding
