----------------------
---- WINDOW RULES ----
----------------------

local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})

-- lua/rules.lua

-- Disable live content redraw glitches for ghostty during resizes
hl.window_rule({
	name = "kitty-resize-fix",
	match = { class = "kitty" }, -- or class = "ghostty"
	-- Prevents constant buffer updates during animation
	no_initial_focus = false,
})

hl.layer_rule({
	name = "waybar-blur",
	match = {
		namespace = "waybar",
	},
	blur = true,
	ignore_alpha = 0.2,
})
