-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

-- local is_git_dir = function()
--   return os.execute("git rev-parse --is-inside-work-tree >> /dev/null 2>&1")
-- end
--
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     local bufferPath = vim.fn.expand("%:p")
--     if vim.fn.isdirectory(bufferPath) ~= 0 then
--       local ts_builtin = require("telescope.builtin")
--       vim.api.nvim_buf_delete(0, { force = true })
--       if is_git_dir() == 0 then
--         ts_builtin.git_files({ show_untracked = true })
--       else
--         ts_builtin.find_files()
--       end
--     end
--   end,
-- })

vim.api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })
