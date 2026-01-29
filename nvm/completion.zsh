# Only setup load-nvmrc if nvm is loaded and not skipped
if [ "$DOTFILES_SKIP_NVM" != "1" ] && type nvm &>/dev/null; then
  autoload -U add-zsh-hook
  load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      # Only revert to default if it's actually set
      if [ "$(nvm version default)" != "N/A" ]; then
        echo "Reverting to nvm default version"
        nvm use default
      fi
    fi
  }
  add-zsh-hook chpwd load-nvmrc
  load-nvmrc
fi
