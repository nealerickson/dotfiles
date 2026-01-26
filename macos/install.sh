if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

# Check if user has admin privileges (required for sudo)
if ! dseditgroup -o checkmember -m "$(whoami)" admin >/dev/null 2>&1; then
  echo "› Skipping macOS software updates (requires admin privileges)"
  exit 0
fi

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a
