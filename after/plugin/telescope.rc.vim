if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;g <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;t <cmd>Telescope help_tags<cr>
nnoremap <silent> ;d <cmd>Telescope file_browser<cr>
nnoremap <silent> ;u <cmd>cd %:h<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    extensions = {
      file_browser = {
        theme = "ivy",
        mappings = {
          ["i"] = {
            -- your custom insert mode mappings
          },
          ["n"] = {
            -- your custom normal mode mappings
          },
        },
      },
    },
  }
}
require("telescope").load_extension "file_browser"
EOF
