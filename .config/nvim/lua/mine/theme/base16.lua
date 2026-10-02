return {
	{
		"RRethy/base16-nvim",
		lazy = false,
		priority = 1000,

		config = function()
			local path = vim.fn.stdpath("config") .. "/generated/matugen.lua"

			if vim.fn.filereadable(path) == 1 then
				dofile(path)
			end
		end,
	},
}
