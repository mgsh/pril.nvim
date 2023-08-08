require("pril.config")

return {
	{ "folke/lazy.nvim", version = "*" },
	{
		"mgsh/pril.nvim",
		priority = 10000, -- high load priority
		lazy = false, -- load on start
		config = true, -- calls main.setup
		-- cond = true,
		version = "*",
	},
}

