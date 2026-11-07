#!/bin/bash

SESSION="${1:-main}"

if tmux has-session -t "$SESSION" 2>/dev/null; then
  read -p "Session '$SESSION' already exists. Recreate it? [y/N] " choice
  case "$choice" in
    y|Y)
      tmux kill-session -t "$SESSION"
      ;;
    *)
      tmux attach-session -t "$SESSION"
      exit 0
      ;;
  esac
fi

tmux new-session -d -s "$SESSION" -n "ZSH"
tmux new-window -t "$SESSION" -n "NOTES"
tmux new-window -t "$SESSION" -n "AI"
tmux new-window -t "$SESSION" -n "EDITOR"

tmux select-window -t "$SESSION:ZSH"
tmux attach-session -t "$SESSION"
