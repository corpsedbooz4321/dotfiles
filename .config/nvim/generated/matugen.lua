require("base16-colorscheme").setup({
	base00 = "#121318",
	base01 = "#0c0e13",
	base02 = "#1a1b20",
	base03 = "#44474f",
	base04 = "#c5c6d0",
	base05 = "#e2e2e9",
	base06 = "#2f3036",
	base07 = "#37393e",
	base08 = "#ffb4ab",
	base09 = "#dfbbde",
	base0A = "#bfc6dc",
	base0B = "#aec6ff",
	base0C = "#583e5a",
	base0D = "#2c4678",
	base0E = "#3f4759",
	base0F = "#93000a",
})

vim.api.nvim_set_hl(0, "Visual", {
	bg = "#2c4678",
	fg = "#121318",
})
