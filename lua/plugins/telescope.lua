return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- local builtin = require('telescope.builtin')
		end,
		keys = {
			vim.keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>"),
			vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>"),
			vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
			vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
			vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
			vim.keymap.set("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true<CR>"),
			vim.keymap.set("n", "<leader>fz", ":Telescope current_buffer_fuzzy_find<CR>"),
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
