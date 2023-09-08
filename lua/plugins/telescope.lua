local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      path_display = { "truncate" },
      sorting_strategy = "ascending",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      },
    },
  },
  keys = {
    { "<leader>ff", Util.telescope("files", { cwd = false }), desc = "Find files (all)", remap = true },
    { "<leader><leader>", Util.telescope("files", { cwd = false }), desc = "Find files (all)", remap = true },
    { "<leader>fF", Util.telescope("files"), desc = "Find files (cwd)", remap = true },
    { "<leader>sg", Util.telescope("live_grep", { cwd = false }), desc = "Grep (root dir)" },
    { "<leader>sG", Util.telescope("live_grep"), desc = "Grep (cwd)" },
  },
}
