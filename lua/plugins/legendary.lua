return {
  {
    "mrjones2014/legendary.nvim",
    -- sqlite is only needed if you want to use frecency sorting
    -- requires = 'kkharji/sqlite.lua',
    --
    keys = {
      { "<leader>p", "<cmd>Legendary<cr>", desc = "Legendary" },
    },
    opts = {
      which_key = { auto_register = true },
    },
  },
}
