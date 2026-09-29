return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		opts = {
			completion = {
				documentation = {
					auto_show = true,
				},
			},
			signature = {
				enabled = true,
			},
			snippets = {
				preset = "default",
			},
			keymap = {
				preset = "default",

				-- Navigate down the menu, or jump to next snippet placeholder
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },

				-- Navigate up the menu, or jump to previous snippet placeholder
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

				-- Accept the highlighted completion item / expand snippet
				["<CR>"] = { "accept", "fallback" },
			},
		},
	},
}
