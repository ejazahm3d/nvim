return {
  -- add gruvbox
  { "navarasu/onedark.nvim",
    opts = {
      style = 'deep'
    }
  },
  { "rebelot/kanagawa.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { 'olivercederborg/poimandres.nvim' },
  { 'projekt0n/github-nvim-theme' },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
