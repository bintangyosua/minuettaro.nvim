return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  lazy = false,
  config = function()

    local configs = require("nvim-treesitter.configs")

    require 'nvim-treesitter.install'.compilers = { "clang", "zig" }

    configs.setup({
      ensure_installed = {
        "lua", 
        "json",
        "typescript",
        "javascript", 
        "go",
        "tsx",
        "css",
        "html",
        "rust",
        "php",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
      auto_install = true
    })
  end
}
