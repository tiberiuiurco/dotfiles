local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Quality Of Life
Plug 'tpope/vim-commentary'
Plug 'windwp/nvim-autopairs'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

-- Git
Plug 'p00f/nvim-ts-rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

-- Brackets
Plug 'tpope/vim-surround'

-- Colors
Plug 'norcalli/nvim-colorizer.lua'

-- Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

-- LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'onsails/lspkind-nvim'
Plug "hrsh7th/cmp-buffer" -- buffer completions
Plug "hrsh7th/cmp-cmdline" -- cmdline completions
Plug "hrsh7th/cmp-emoji"
Plug "hrsh7th/cmp-nvim-lua"

-- Themes
Plug 'dracula/vim'
Plug 'folke/tokyonight.nvim'
Plug 'tomasiser/vim-code-dark'

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Nvim Tree
Plug 'kyazdani42/nvim-web-devicons' -- optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

-- Snips
Plug 'rafamadriz/friendly-snippets'

-- Buffers
-- Plug 'akinsho/bufferline.nvim'

-- Harpoon
Plug 'ThePrimeagen/harpoon'

--
Plug 'nvim-treesitter/nvim-treesitter'

-- Formatting
Plug 'jose-elias-alvarez/null-ls.nvim'



vim.call('plug#end')
