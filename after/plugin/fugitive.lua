local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>gg', ':G<cr>')
map('n', '<leader>gc', ':G commit<cr>')
map('n', '<leader>gd', ':tabe %<cr>:Gvdiffsplit!<CR>')
map('n', '<leader>gD', ':DiffviewOpen<cr>')
map('n', '<leader>gm', ':tabe %<cr>:Gvdiffsplit! main<CR>')
map('n', '<leader>gM', ':DiffviewOpen main<cr>')
map('n', '<leader>gl', ':Git log<cr>')
map('n', '<leader>gp', ':Git push<cr>')

-- David-Kunz/jester
map('n', '<leader>tt', ':lua require"jester".run({ path_to_jest = "/usr/local/bin/jest" })<cr>')
map('n', '<leader>t_', ':lua require"jester".run_last({ path_to_jest = "/usr/local/bin/jest" })<cr>')
map('n', '<leader>tf', ':lua require"jester".run_file({ path_to_jest = "/usr/local/bin/jest" })<cr>')
map('n', '<leader>dd', ':lua require"jester".debug({ path_to_jest = "/usr/local/bin/jest" })<cr>')
map('n', '<leader>d_', ':lua require"jester".debug_last({ path_to_jest = "/usr/local/bin/jest" })<cr>')
map('n', '<leader>df', ':lua require"jester".debug_file({ path_to_jest = "/usr/local/bin/jest" })<cr>')

