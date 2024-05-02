return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    lazy = false,
    config = function()

        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "lua", 
                "json" 
            },
            sync_install = false,
            -- highlight = { enable = true },
            indent = { enable = true },  
            auto_install = true
        })
    end
}
