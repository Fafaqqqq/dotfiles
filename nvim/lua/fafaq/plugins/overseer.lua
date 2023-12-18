return {
	"stevearc/overseer.nvim",
	opts = {},

	config = function()
		local overseer = require("overseer")
		local keymap = vim.keymap
		overseer.setup({
			strategy = "toggleterm",
		})

		keymap.set("n", "<leader>ro", ":OverseerRun<CR>", {
			desc = "Open task explorer",
		})
	end,
}
