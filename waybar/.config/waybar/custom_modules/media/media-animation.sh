#!/usr/bin/env bash
#
#animation_frames=("▁" "▂" "▃" "▄" "▅" "▆" "▇" "█")

animation_frames=("▂▄▆" "▄▂▆" "▄▆▂" "▆▄▂" "▆▂▄")

while true; do
  player_status=$(playerctl status 2>/dev/null)

  if [ "$player_status" = "Playing" ]; then
    for frame in "${animation_frames[@]}"; do
      echo "$frame"
      sleep 0.1
    done

  elif [ "$player_status" = "Paused" ]; then
    echo ""
    sleep 0.5

  else
    echo ""
    sleep 1
  fi
done
