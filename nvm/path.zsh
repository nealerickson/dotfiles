# Skip NVM if DOTFILES_SKIP_NVM=1 (e.g., to use Homebrew Node instead)
if [ "$DOTFILES_SKIP_NVM" != "1" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
else
  # Clean up nvm if it was loaded in a previous session
  unset -f nvm nvm_find_nvmrc 2>/dev/null
  unset NVM_DIR NVM_CD_FLAGS NVM_BIN NVM_INC 2>/dev/null
fi
