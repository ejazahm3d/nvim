return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")

    return {
      sources = {
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
          extra_args = {
            "--single-quote",
          },
        }),

        nls.builtins.code_actions.eslint_d.with({
          "javascript",
          "typescript",
          "typescriptreact",
        }),

        nls.builtins.diagnostics.eslint_d.with({
          "javascript",
          "typescript",
          "typescriptreact",
        }),
      },
    }
  end,
}
