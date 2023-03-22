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
    opts = function()
      local ai = require("mini.ai")
      return {
        custom_textobjects = {
          A = ai.gen_spec.treesitter({
            a = "@attribute.outer",
            i = "@attribute.inner"
          }, {}),
          f = ai.gen_spec.treesitter({
            a = "@function.outer",
            i = "@function.inner"
          }, {})
        },
      }
    end,
  }
}
