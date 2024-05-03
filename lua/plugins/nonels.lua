return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    -- setting formater yang akan dipakai

    null_ls.setup({
      sources = {
        -- stylua
        null_ls.builtins.formatting.stylua,

        -- prettier
        null_ls.builtins.formatting.prettier.with {
          filetypes = {
            "css", "html", "javascript", "typescript", "json", "yaml",
            "graphql", "php", "java", "ruby", "rust", "toml", "prisma",
            "sql", "go-template", "erb", "astro",
          },
          dynamic_command = function()
            return "prettier"
          end,
        }
      },

      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
              -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
              vim.lsp.buf.format({ async = false })
              -- vim.lsp.buf.formatting_sync()
            end,
          })
        end
      end,
    })

    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
  end
}
