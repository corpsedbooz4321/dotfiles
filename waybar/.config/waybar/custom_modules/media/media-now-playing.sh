#!/usr/bin/env zsh

zscroll -l 20 \
  --delay 0.3 \
  --update-check true \
  -p "   |   " \
  "playerctl metadata --format '{{title}} - {{artist}}' 2>/dev/null || echo 'No media playing'"
