local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'sainnhe/gruvbox-material'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-commentary'
Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafamadriz/friendly-snippets'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'windwp/nvim-autopairs'
-- Plug 'folke/which-key.nvim'

-- Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

Plug "hrsh7th/cmp-buffer" -- buffer completions
Plug "hrsh7th/cmp-path" -- path completions
Plug "hrsh7th/cmp-cmdline" -- cmdline completions
Plug "hrsh7th/cmp-emoji"
Plug "hrsh7th/cmp-nvim-lua"

-- Git
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'p00f/nvim-ts-rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

-- Colorschemes
Plug 'folke/tokyonight.nvim'
Plug 'tomasiser/vim-code-dark'

-- Buffers
Plug 'kyazdani42/nvim-web-devicons' -- optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'
Plug 'moll/vim-bbye'

-- Copilot
Plug 'github/copilot.vim'

-- Brackets
Plug 'tpope/vim-surround'

-- Colors
Plug 'norcalli/nvim-colorizer.lua'

vim.call('plug#end')
