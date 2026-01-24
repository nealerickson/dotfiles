# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a topic-centric dotfiles repository forked from Zach Holman's dotfiles. Configuration is organized into topic directories (git, zsh, ruby, node, python, etc.) rather than scattered files.

## Key Commands

```bash
# Initial setup - symlinks dotfiles, configures git
script/bootstrap

# Install packages and run all topic install scripts
script/install

# Periodic maintenance - update Homebrew, run installers, set macOS defaults
bin/dot
```

## File Conventions

The repository uses naming conventions for automatic behavior:

| Pattern | Behavior |
|---------|----------|
| `*.symlink` | Symlinked to `$HOME` without extension (e.g., `gitconfig.symlink` → `~/.gitconfig`) |
| `path.zsh` | Loaded first - for PATH setup |
| `*.zsh` | Auto-sourced into shell environment |
| `completion.zsh` | Loaded last - for shell completions |
| `install.sh` | Executed by `script/install` |

## Architecture

**Loading order in zshrc:**
1. Source `~/.localrc` (private config, not version controlled)
2. Load all `path.zsh` files
3. Load all other `*.zsh` files (except completions)
4. Initialize autocomplete
5. Load all `completion.zsh` files
6. Load Oh My Zsh

**Key directories:**
- `bin/` - Added to PATH; contains git helpers and utilities
- `functions/` - Autoloaded shell functions
- `Brewfile` - Homebrew package manifest

**Private configuration:**
- `~/.localrc` - Source of secret env vars (sourced if exists)
- `~/.gitconfig.local` - Local git config (generated from template during bootstrap)

## Adding New Topics

1. Create a new directory (e.g., `java/`)
2. Add `*.zsh` files for shell configuration
3. Add `path.zsh` if PATH modifications needed
4. Add `*.symlink` files for home directory configs
5. Add `install.sh` for package installation
