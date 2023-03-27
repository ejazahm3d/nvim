-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set(
  "n",
  "<leader>sx",
  require('telescope.builtin').resume,
  {
    noremap = true,
    silent = true,
    desc = 'Resume'
  }
)

vim.keymap.set(
  "n",
  "<C-d>",
  "<C-d>zz",
  {
    noremap = true,
    silent = true,
    desc = 'Half Page Down'
  }
)

vim.keymap.set(
  "n",
  "<C-u>",
  "<C-u>zz",
  {
    noremap = true,
    silent = true,
    desc = 'Half Page Up'
  }
)
