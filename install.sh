#!/bin/sh
set -eu

if [ "$#" -ne 1 ]; then
  echo "Usage: ./install.sh /path/to/project" >&2
  exit 1
fi

TARGET_DIR=$1
SOURCE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

if [ ! -d "$TARGET_DIR" ]; then
  echo "Target directory does not exist: $TARGET_DIR" >&2
  exit 1
fi

copy_dir() {
  src=$1
  dest=$2
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  cp -R "$src" "$dest"
}

cp "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
copy_dir "$SOURCE_DIR/docs" "$TARGET_DIR/docs"
copy_dir "$SOURCE_DIR/templates" "$TARGET_DIR/templates"
copy_dir "$SOURCE_DIR/adapters/codex/.codex" "$TARGET_DIR/.codex"

echo "FrontFlow installed into $TARGET_DIR"
echo "Copied: AGENTS.md, docs/, templates/, .codex/"
