return {
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- Enable subtle background transparency to keep your hyprland blur/wallpaper showing
			vim.g.nord_contrast = true
			vim.g.nord_borders = false
			vim.g.nord_disable_background = true -- Set to false if you prefer solid dark backgrounds
			vim.g.nord_italic = false
			vim.g.nord_uniform_diff_background = true -- Set to false if you prefer solid dark backgrounds
			vim.g.nord_bold = false

			require("nord").set()

			local bg_transparent = true
			local toggle_transparency = function()
				bg_transparent = not bg_transparent
				vim.g.nord_disable_background = bg_transparent
				vim.cmd([[colorscheme nord]])
			end
			vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
		end,
	},
}
