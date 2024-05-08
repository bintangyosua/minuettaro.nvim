return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 999,
		config = function()
			vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 0,
		lazy = true,
		config = function()
			vim.cmd("colorscheme catppuccin")
		end,
	},
}
