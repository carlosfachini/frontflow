#!/bin/sh
set -eu

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: ./install.sh /path/to/project [--force]" >&2
  exit 1
fi

TARGET_DIR=$1
FORCE=${2:-}
SOURCE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
BACKUP_DIR="$TARGET_DIR/.frontflow-backup/$(date +%Y%m%d_%H%M%S)"

if [ "$FORCE" != "" ] && [ "$FORCE" != "--force" ]; then
  echo "Unknown option: $FORCE" >&2
  echo "Usage: ./install.sh /path/to/project [--force]" >&2
  exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo "Target directory does not exist: $TARGET_DIR" >&2
  exit 1
fi

backup_path() {
  path=$1

  if [ -e "$path" ]; then
    rel=${path#"$TARGET_DIR"/}
    backup_path="$BACKUP_DIR/$rel"
    mkdir -p "$(dirname "$backup_path")"
    cp -R "$path" "$backup_path"
    echo "Backed up: $rel"
  fi
}

copy_dir() {
  src=$1
  dest=$2
  mkdir -p "$(dirname "$dest")"
  backup_path "$dest"
  rm -rf "$dest"
  cp -R "$src" "$dest"
}

copy_file() {
  src=$1
  dest=$2
  mkdir -p "$(dirname "$dest")"
  backup_path "$dest"
  cp "$src" "$dest"
}

if [ "$FORCE" != "--force" ]; then
  echo "FrontFlow will copy AGENTS.md, docs/, templates/, and .codex/ into:"
  echo "$TARGET_DIR"
  echo "Existing files will be backed up under .frontflow-backup/."
  printf "Continue? [y/N] "
  read answer
  case "$answer" in
    y|Y|yes|YES) ;;
    *) echo "Install cancelled."; exit 0 ;;
  esac
fi

if [ -x "$SOURCE_DIR/scripts/sync-codex-skills.sh" ]; then
  "$SOURCE_DIR/scripts/sync-codex-skills.sh" >/dev/null
fi

copy_file "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
copy_dir "$SOURCE_DIR/docs" "$TARGET_DIR/docs"
copy_dir "$SOURCE_DIR/templates" "$TARGET_DIR/templates"
copy_dir "$SOURCE_DIR/adapters/codex/.codex" "$TARGET_DIR/.codex"

echo "FrontFlow installed into $TARGET_DIR"
echo "Copied: AGENTS.md, docs/, templates/, .codex/"
if [ -d "$BACKUP_DIR" ]; then
  echo "Backup: $BACKUP_DIR"
fi
