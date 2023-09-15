return {
	"stevearc/overseer.nvim",
	opts = {},

	config = function()
		local overseer = require("overseer")
		local keymap = vim.keymap
		overseer.setup({
			strategy = "toggleterm",
			templates = { "builtin", "user.proj_build" },
		})

		keymap.set("n", "<leader>ro", ":OverseerRun<CR>", {
			desc = "Open task explorer",
		})
	end,
}
