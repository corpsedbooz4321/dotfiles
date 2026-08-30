#!/usr/bin/env zsh

if [[ -f /sys/class/drm/card0/gt/gt0/rc6_residency_ms ]]; then
    cat /sys/class/drm/card0/device/gpu_busy_percent 2>/dev/null || echo "0"
else
    echo "0"
fi
