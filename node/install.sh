if test ! $(which spoof)
then
  if test $(which npm)
  then
    # Check if user has admin privileges (required for sudo)
    if dseditgroup -o checkmember -m "$(whoami)" admin >/dev/null 2>&1; then
      sudo npm install spoof -g
    else
      echo "› Skipping spoof install (requires admin privileges)"
    fi
  fi
fi