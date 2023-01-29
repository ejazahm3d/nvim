return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")

    return {
      sources = {
        -- nls.builtins.formatting.prettierd,
        nls.builtins.formatting.prettier.with({
          filetypes = {
            "javascript",
            "typescript",
            "typescriptreact",
            "css",
            "scss",
            "html",
            "json",
            "yaml",
            "markdown",
            "graphql",
            "md",
            "txt",
          },
        }),
      },
    }
  end,
}
