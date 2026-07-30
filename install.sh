#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_ROOT="${XDG_DATA_HOME:-$HOME/.local/share}/icons"
DEST_DIR="$DEST_ROOT/DPD-Pin-Up-Icons"
STAMP="$(date +%Y%m%d-%H%M%S)"

mkdir -p "$DEST_ROOT"

if [ -e "$DEST_DIR" ]; then
  BACKUP_DIR="${DEST_DIR}.backup-$STAMP"
  echo "Existing installation found."
  echo "Moving it to:"
  echo "  $BACKUP_DIR"
  mv "$DEST_DIR" "$BACKUP_DIR"
fi

echo "Installing DPD Pin-Up Icons to:"
echo "  $DEST_DIR"

mkdir -p "$DEST_DIR"

cp -a "$SOURCE_DIR/512 Edition" "$DEST_DIR/"
cp -a "$SOURCE_DIR/README.md" "$DEST_DIR/"
cp -a "$SOURCE_DIR/LICENSE.md" "$DEST_DIR/"
cp -a "$SOURCE_DIR/CHANGELOG.md" "$DEST_DIR/"
cp -a "$SOURCE_DIR/CREDITS.md" "$DEST_DIR/"

echo
echo "Installation complete."
echo "Installed 1,015 icons."
