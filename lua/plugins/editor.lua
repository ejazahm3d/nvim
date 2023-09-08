return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>ge",
        function()
          require("neo-tree.command").execute({ source = "git_status", toggle = true })
        end,
        desc = "Git explorer",
      },
      {
        "<leader>be",
        function()
          require("neo-tree.command").execute({ source = "buffers", toggle = true })
        end,
        desc = "Buffer explorer",
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
  },
  {

    "smjonas/duplicate.nvim",
    config = function()
      require("duplicate").setup()
    end,
  },
  {
    "rgroli/other.nvim",
  },
}
