return {

	name = "test",
	builder = function()
		local proj_dir = vim.fn.expand(":cd %:h")
		return {
			cmd = { "./scripts/configure.sh" },
			args = { "--name", "test", "--type", "Debug" },
			components = { { "on_output_quickfix", open = true }, "default" },
		}
	end,
}
