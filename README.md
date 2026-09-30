# Dotfiles

Personal dotfiles repository containing configuration files for various tools and applications.

## Contents

This repository contains dotfiles for configuring development tools and shell environments.

## Project tree

```text
.
├── .config
│   ├── btop
│   │   └── btop.conf
│   ├── cava
│   │   ├── config
│   │   ├── shaders
│   │   │   ├── bar_spectrum.frag
│   │   │   ├── eye_of_phi.frag
│   │   │   ├── northern_lights.frag
│   │   │   ├── orion_circle.frag
│   │   │   ├── orion_circle_rotate.frag
│   │   │   ├── orion_saturn_core.frag
│   │   │   ├── orion_saturn_subring.frag
│   │   │   ├── pass_through.vert
│   │   │   ├── spectrogram.frag
│   │   │   └── winamp_line_style_spectrum.frag
│   │   ├── themes
│   │   │   ├── cava-colors
│   │   │   ├── solarized_dark
│   │   │   └─�� tricolor
│   │   └── yazi
│   │       └── yazi.toml
│   ├── cmus
│   │   └── playlists
│   │       └── Default
│   ├── fastfetch
│   │   └── config.jsonc
│   ├── hypr
│   │   ├── .luarc.json
│   │   ├── hyprland.lua
│   │   └── lua
│   │       ├── appearance.lua
│   │       ├── autostart.lua
│   │       ├── input.lua
│   │       ├── keybinds.lua
│   │       └── rules.lua
│   ├── kitty
│   │   ├── kitty.conf
│   │   └── themes
│   │       ├── Catppuccin-Mocha.conf
│   │       ├── nord.conf
│   │       ├── one-dark.conf
│   │       └── pywal.conf
│   ├── nvim
│   │   ├── init.lua
│   │   ├── lazyvim.json
│   │   ├── lua
│   │   │   └── mine
│   │   │       ├── config
│   │   │       │   ├── autocmds.lua
│   │   │       │   ├── cowboy.lua
│   │   │       │   ├── keymaps.lua
│   │   │       │   └── options.lua
│   │   │       ├── dap
│   │   │       │   └── dap.lua
│   │   │       ├── languages
│   │   │       │   ├── c.lua
│   │   │       │   ├── csharp.lua
│   │   │       │   ├── init.lua
│   │   │       │   ├── json.lua
│   │   │       │   ├── lua.lua
│   │   │       │   ├── markdown.lua
│   │   │       │   └── python.lua
│   │   │       ├── lazy
│   │   │       │   └── lazy.lua
│   │   │       ├── lsp
│   │   │       │   ├── diagnostics.lua
│   │   │       │   ├── init.lua
│   │   │       │   ├── keymaps.lua
│   │   │       │   ├── mason.lua
│   │   │       │   └── servers.lua
│   │   │       ├── plugins
│   │   │       │   ├── coding
│   │   │       │   │   ├── completion.lua
│   │   │       │   │   ├── formatting.lua
│   │   │       │   │   ├── multicursor.lua
│   │   │       │   │   ├── testing.lua
│   │   │       │   │   └── treesitter.lua
│   │   │       │   ├── editor
│   │   │       │   │   ├── flash.lua
│   │   │       │   │   ├── oil.lua
│   │   │       │   │   ├── refactoring.lua
│   │   │       │   │   ├── snacks.lua
│   │   │       │   │   └── surround.lua
│   │   │       │   ├── git
│   │   │       │   │   ├── git.lua
│   │   │       │   │   └── lazygit.lua
│   │   │       │   ├── init.lua
│   │   │       │   ├── tools
│   │   │       │   │   ├── live-server.lua
│   │   │       │   │   ├── telescope.lua
│   │   │       │   │   ├── tmux-nav.lua
│   │   │       │   │   └── toggleterm.lua
│   │   │       │   └── ui
│   │   │       │       ├── icons.lua
│   │   │       │       ├── noice.lua
│   │   │       │       └── notify.lua
│   │   │       └── theme
│   │   │           ├── catppuccin.lua
│   │   │           ├── gruvbox.lua
│   │   │           ├── nord.lua
│   │   │           ├── onedark.lua
│   │   │           └── tokyonight.lua
│   │   ├── snippets
│   │   │   ├── c.json
│   │   │   └── cs.json
│   │   └── stylua.toml
│   ├── rescrobbled
│   │   └── session
│   ├── rofi
│   │   ├── colors
│   │   │   ├── nord.rasi
│   │   │   └── pywal.rasi
│   │   ├── config.rasi
│   │   ├── images
│   │   │   ├── a_black_background_with_purple_and_blue_spots.png
│   │   │   ├── a_cartoon_of_girls_playing_instruments_on_a_street.jpeg
│   │   │   ├── a_drawing_of_a_person_wearing_a_mask_and_holding_a_sign.jpg
│   │   │   ├── a_girl_standing_in_front_of_a_guitar_case.jpg
│   │   │   ├── a_group_of_cartoon_characters_02.jpg
│   │   │   ├── a_table_with_papers_and_a_pen_on_it.jpeg
│   │   │   ├── aesthetic-landscape-with-train_800.gif
│   │   │   ├── f.png
│   │   │   ├── g.png
│   │   │   ├── sailor-moon-window.gif
│   │   │   └── user.jpeg
│   │   └── launchers
│   │       └── type-6
│   │           ├── launcher.sh
│   │           └── style-6.rasi
│   ├── starship.toml
│   ├── wal
│   │   └── templates
│   │       ├── cava-colors
│   │       ├── rofi.rasi
│   │       └── sonora_bridge.py
│   └── waybar
│       ├── auto-reload.sh
│       ├── config.jsonc
│       ├── custom_modules
│       │   └── media
��       │       ├── media-animation.sh
│       │       └── media-now-playing.sh
│       ├── scripts
│       │   └── gpu_usage.sh
│       └── style.css
├── .gitignore
├── .local
│   └── bin
│       ├── rofi-wallpaper
│       ├── screenshot.sh
│       └── setwal
├── .tmux.conf
├── .zprofile
├── .zshrc
├── LICENSE
├── README.md
└── 
```

## Installation

Clone this repository to your local machine and symlink the desired configuration files to their appropriate locations.

```bash
git clone https://github.com/corpsedbooz4321/dotfiles.git
cd dotfiles
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
