return {
  {
    "carbon-steel/detour.nvim",
    config = function()
      vim.keymap.set("n", "<c-w><enter>", ":Detour<cr>")
    end,
  },
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
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>" },
    },
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
  {
    "sindrets/diffview.nvim",
    config = true,
  },
  {
    "ruifm/gitlinker.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {
      enabled = true,
      snippet_engine = "luasnip",
    },
    keys = {
      { "<leader>cc", "<cmd>Neogen<cr>", desc = "Generate docs" },
    },
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },
}
