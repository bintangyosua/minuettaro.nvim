return {
	"NvChad/nvterm",
	config = function()
		require("nvterm").setup()

		keymap = vim.keymap

		-- toggle floating terminal
		keymap.set("t", "<A-i>", function()
			require("nvterm.terminal").toggle("float")
		end, {})

		-- toggle terminal vertical
		keymap.set("t", "<A-v>", function()
			require("nvterm.terminal").toggle("vertical")
		end, {})

		-- toggle terminal horizontal
		keymap.set("t", "<A-h>", function()
			require("nvterm.terminal").toggle("horizontal")
		end, {})

		-- normal mode, toggle floating terminal
		keymap.set("n", "<A-i>", function()
			require("nvterm.terminal").toggle("float")
		end, {})

		-- normal mode, toggle vertical terminal
		keymap.set("n", "<A-v>", function()
			require("nvterm.terminal").toggle("vertical")
		end, {})

		-- normal mode, toggle horizontal terminal
		keymap.set("n", "<A-h>", function()
			require("nvterm.terminal").toggle("horizontal")
		end, {})
	end,
}
