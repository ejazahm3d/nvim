return {

  {
    "mrjones2014/smart-splits.nvim",
    config = function()
      vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
      vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
      vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
      vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>" },
    },
  },
  {
    "rgroli/other.nvim",
  },
  {
    "sindrets/diffview.nvim",
    config = true,
  },
  {
    "ruifm/gitlinker.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
}
