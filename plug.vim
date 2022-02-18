if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
  " Bara de informações que fica na parte inferior da tela
  Plug 'hoob3rt/lualine.nvim' 
  " Icones do git que aparecem do lado o texto
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  " Icons
  Plug 'kyazdani42/nvim-web-devicons'
  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  " Ver definições 
  Plug 'ray-x/lsp_signature.nvim'
  " Temas cores
  Plug 'EdenEast/nightfox.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'sainnhe/sonokai'
  " Transparencia
  Plug 'xiyaowong/nvim-transparent'
  " Git diff in the sign column
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  " emmet expand html
  Plug 'mattn/emmet-vim'
  " autopairs
  Plug 'windwp/nvim-autopairs' 
  " Popup
  Plug 'nvim-lua/popup.nvim'
  " Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  " Snippets
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  " Commentary
  Plug 'tpope/vim-commentary'
  " Surround
  Plug 'blackCauldron7/surround.nvim'
endif

call plug#end()
