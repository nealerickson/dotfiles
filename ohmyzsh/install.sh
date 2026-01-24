#!/bin/sh
#
# Oh My Zsh
#
# This installs some of the common dependencies needed (or at least desired)
# using Oh My Zsh.

DOTFILES_ROOT="${HOME}/.dotfiles"
ZSHRC_SYMLINK_TARGET="${DOTFILES_ROOT}/zsh/zshrc.symlink"
ZSHRC_FILE="${HOME}/.zshrc"
ZSHRC_OMZ_BACKUP="${HOME}/.zshrc.ohmyzsh"

# Check for Oh My Zsh
if ! [ -d "${HOME}/.oh-my-zsh" ]
then
  echo "  Installing Oh My Zsh for you."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# After OMZ installation, restore the dotfiles symlink
# The OMZ installer may have overwritten ~/.zshrc with its own template

# Check if ~/.zshrc exists and is a regular file (not a symlink)
if [ -f "${ZSHRC_FILE}" ] && [ ! -L "${ZSHRC_FILE}" ]
then
  echo "  Preserving Oh My Zsh's .zshrc as .zshrc.ohmyzsh"

  # Overwrite existing backup if present
  if [ -f "${ZSHRC_OMZ_BACKUP}" ]
  then
    rm -f "${ZSHRC_OMZ_BACKUP}"
  fi

  mv "${ZSHRC_FILE}" "${ZSHRC_OMZ_BACKUP}"
fi

# Create the symlink if it doesn't exist or points to wrong target
if [ -L "${ZSHRC_FILE}" ]
then
  current_target=$(readlink "${ZSHRC_FILE}")
  if [ "${current_target}" != "${ZSHRC_SYMLINK_TARGET}" ]
  then
    echo "  Updating .zshrc symlink to point to dotfiles"
    rm -f "${ZSHRC_FILE}"
    ln -s "${ZSHRC_SYMLINK_TARGET}" "${ZSHRC_FILE}"
  fi
elif [ ! -e "${ZSHRC_FILE}" ]
then
  echo "  Creating .zshrc symlink to dotfiles"
  ln -s "${ZSHRC_SYMLINK_TARGET}" "${ZSHRC_FILE}"
fi

exit 0
