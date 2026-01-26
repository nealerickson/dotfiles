# FZF Completion - loaded after compinit
if [[ -n "$FZF_BASE" ]]; then
  [[ -f "$FZF_BASE/shell/completion.zsh" ]] && source "$FZF_BASE/shell/completion.zsh"
fi
