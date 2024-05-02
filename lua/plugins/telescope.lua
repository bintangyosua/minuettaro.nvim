return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		vim.keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>"),
		vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>"),
		vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
		vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
		vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
	},
}
