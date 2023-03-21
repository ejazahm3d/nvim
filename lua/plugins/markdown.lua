return {
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
    keys = {
      {
        "mg",
        "<cmd>Glow<cr>",
        desc = "Toggle Glow"
      }
    }
  },
  {
    'toppair/peek.nvim',
    build = 'deno task --quiet build:fast',
    keys = {
      {
        "mp",
        function()
          if require("peek").is_open then
            require("peek").open()
          else
            require("peek").close()
          end
        end,
        desc = "Toggle Markdown",
      },
    }
  }
}
