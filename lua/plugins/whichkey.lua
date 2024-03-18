return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function ()
    vim.o.timeout = true
    vim.o.timoutlen = 300
  end,
  opts = {

  }
}
