return {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    'nvim-treesitter/playground',
    keys = {
      {
        "<leader>tp",
        "<cmd>TSPlaygroundToggle<cr>",
        desc = "Toggle treesitter playground"
      }
    }
  },
}
