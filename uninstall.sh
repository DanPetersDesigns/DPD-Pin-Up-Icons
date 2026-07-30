#!/usr/bin/env bash
set -euo pipefail

DEST_ROOT="${XDG_DATA_HOME:-$HOME/.local/share}/icons"
DEST_DIR="$DEST_ROOT/DPD-Pin-Up-Icons"

if [ ! -e "$DEST_DIR" ]; then
  echo "DPD Pin-Up Icons is not currently installed."
  exit 0
fi

echo "Removing:"
echo "  $DEST_DIR"

rm -rf "$DEST_DIR"

echo
echo "Uninstallation complete."
echo "Any timestamped backup folders were left untouched."
