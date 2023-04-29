return {
  {
    "echasnovski/mini.splitjoin",
    version = false,
    config = function()
      require("mini.splitjoin").setup()
    end,
  },
  {
    "echasnovski/mini.ai",
    dependencies = { "nvim-treesitter-textobjects" },
    opts = function(_, opts)
      local ai = require("mini.ai")
      opts.custom_textobjects.x = ai.gen_spec.treesitter({
        a = "@parameter.outer",
        i = "@parameter.inner",
      }, {})
      return opts
    end,
  },
}
