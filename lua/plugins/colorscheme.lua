return {
  -- add gruvbox
  { "olimorris/onedarkpro.nvim" },
  { "rebelot/kanagawa.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
