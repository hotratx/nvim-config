local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "folke/which-key.nvim"
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins
  -- Icones do git que aparecem do lado o texto
  use 'Shougo/defx.nvim'

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "tom-anders/telescope-vim-bookmarks.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Treesetter
  use 'nvim-treesitter/nvim-treesitter'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "filipdutescu/renamer.nvim"
  use "simrat39/symbols-outline.nvim"
  use "ray-x/lsp_signature.nvim"
  use "b0o/SchemaStore.nvim"

  -- CMP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Temas cores
  use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use 'sainnhe/sonokai'
  use 'nvim-lualine/lualine.nvim'

  -- Transparencia
  use 'xiyaowong/nvim-transparent'

  -- Git diff in the sign column
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  -- emmet expand html
  use 'mattn/emmet-vim'

  -- autopairs
  use 'windwp/nvim-autopairs' 

  -- Popup
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim

  -- Markdown preview
  use 'iamcco/markdown-preview.nvim'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use "rafamadriz/friendly-snippets"

  -- Commentary
  use 'tpope/vim-commentary'

  -- Surround
  use "Mephistophiles/surround.nvim"

  -- Latex
  use 'lervag/vimtex'
  use 'xuhdev/vim-latex-live-preview'

  -- Ranger in neovim
  use 'kevinhwang91/rnvimr'
end)
