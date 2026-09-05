#!/usr/bin/env python3

import json
import os

# WAL_CACHE = os.path.expanduser("~/.cache/wal/colors.json")
# SONORA_THEME_TARGET = os.path.expanduser("~/dotfiles/.config/sonora/themes/pywal.json")


def hex_to_rgba(hex_str, alpha=1.0):
    """Converts hex string (#RRGGBB) to rgba(r, g, b, alpha) format."""
    hex_str = hex_str.lstrip("#")
    r = int(hex_str[0:2], 16)
    g = int(hex_str[2:4], 16)
    b = int(hex_str[4:6], 16)
    return f"rgba({r}, {g}, {b}, {alpha})"


def main():
    if not os.path.exists(WAL_CACHE):
        print("Pywal data cache not found. Try changing wallpaper or run 'wal' first.")
        return

    with open(WAL_CACHE, "r") as f:
        wal = json.load(f)

    # Base colors extraction
    bg = wal["special"]["background"]
    fg = wal["special"]["foreground"]

    c0, c1, c2, c3, c4, c5, c6, c7 = (wal["colors"][f"color{i}"] for i in range(8))
    c8, c9, c10, c11, c12, c13, c14, c15 = (
        wal["colors"][f"color{i}"] for i in range(8, 16)
    )

    # Theme definition for Sonora
    sonora_theme = {
        "theme_overrides": {
            "background": bg,
            "foreground": fg,
            "border": hex_to_rgba(fg, 0.1),
            "text": fg,
            "muted": c8,
            # Overlays
            "overlay": hex_to_rgba(bg, 0.95),
            "overlay_foreground": fg,
            "secondary": c0,
            "secondary_hover": hex_to_rgba(c0, 0.8),
            "secondary_active": c4,
            # Form, input and action
            "primary": c4,
            "primary_foreground": bg,
            "primary_hover": c12,
            "danger": c1,
            "danger_foreground": bg,
            "danger_hover": c9,
            # UI components
            "popover": bg,
            "popover_foreground": fg,
            "progress_bar": c4,
            "slider": c4,
            "sidebar": c0,
            "sidebar_foreground": hex_to_rgba(fg, 0.8),
            "sidebar_accent": c4,
            "sidebar_border": hex_to_rgba(fg, 0.05),
            # Data view
            "title_bar_border": hex_to_rgba(fg, 0.1),
            "table_head": c0,
            "table_head_foreground": c8,
            "table_row_border": hex_to_rgba(fg, 0.05),
            "table_hover": hex_to_rgba(c4, 0.1),
            "table_active": hex_to_rgba(c4, 0.2),
            "radius": "8px",
            "font_size": "14.0",
        }
    }

    os.makedirs(os.path.dirname(SONORA_THEME_TARGET), exist_ok=True)
    with open(SONORA_THEME_TARGET, "w") as f:
        json.dump(sonora_theme, f, indent=4)

    print("Sonora color layout configuration refreshed successfully!")


if __name__ == "__main__":
    main()
