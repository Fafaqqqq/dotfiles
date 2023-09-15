local M = {
	"ellisonleao/gruvbox.nvim",
	"lunarvim/darkplus.nvim",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	"jacoborus/tender.vim",
	{
		"tanvirtin/monokai.nvim",
		config = function()
			require("monokai").setup({
				palette = require("monokai").soda,
				italics = false,
			})
		end,
	},
}

return M
