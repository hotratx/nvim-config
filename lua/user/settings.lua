local options = {
  foldmethod = marker,
  number = true,                           -- set numbered lines
  relativenumber = true,                  -- set relative numbered lines
  hlsearch = true,                         -- highlight all matches on previous search pattern
  fileencoding = "utf-8",                  -- the encoding written to a file
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  scrolloff = 8,                           -- is one of my fav
  expandtab = true,                        -- convert tabs to spaces
  ignorecase = true,                       -- ignore case in search patterns
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  scrolljump = 8,
  sidescrolloff = 8,
  laststatus = 2,

}


vim.g.mkdp_auto_start = 0
vim.g.livepreview_previewer = 'zathura'
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_compiler_method = 'latexrun'

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd([[ syntax on ]])
