#!/bin/sh
set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
SOURCE_DIR="$ROOT_DIR/skills"
TARGET_DIR="$ROOT_DIR/adapters/codex/.codex/skills"

description_for() {
  case "$1" in
    frontflow-po)
      echo "Default FrontFlow product-owner entry point for front-end work. Turns vague requests into validated tasks and routes to the next skill."
      ;;
    po-router)
      echo "Route incoming front-end requests into the correct FrontFlow step before task generation or implementation."
      ;;
    task-generator)
      echo "Convert a product or UI request into a clear, bounded, testable FrontFlow task."
      ;;
    task-validator)
      echo "Validate a generated FrontFlow task before implementation, checking product clarity, scope, acceptance criteria, UX states, accessibility, and responsive expectations."
      ;;
    front-implementer)
      echo "Implement a validated FrontFlow front-end task with scoped code changes, strong UX judgment, accessibility, responsive behavior, and lightweight verification."
      ;;
    code-reviewer)
      echo "Review a completed FrontFlow front-end change for bugs, regressions, accessibility, responsive issues, visual risks, and missing verification."
      ;;
    *)
      echo "FrontFlow skill generated from skills/$1.md."
      ;;
  esac
}

mkdir -p "$TARGET_DIR"

for source_file in "$SOURCE_DIR"/*.md; do
  name=$(basename "$source_file" .md)
  skill_dir="$TARGET_DIR/$name"
  skill_file="$skill_dir/SKILL.md"

  mkdir -p "$skill_dir"
  {
    echo "---"
    echo "name: $name"
    printf "description: "
    description_for "$name"
    echo "---"
    echo
    cat "$source_file"
  } > "$skill_file"

  echo "Synced $skill_file"
done
