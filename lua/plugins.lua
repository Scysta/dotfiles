-- ================================= --
-- Plugin declaration using vim-plug --
-- ================================= --

local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Colorschemes
Plug 'ghifarit53/tokyonight-vim'

-- Functionality
Plug 'steelsojka/pears.nvim'
Plug 'kylechui/nvim-surround'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'neovim/nvim-lspconfig'

-- UI
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'

vim.call('plug#end')

require('nvim-surround').setup()
require('pears').setup()
require('lualine').setup()
require('telescope').setup()
require('indent_blankline').setup {
	show_current_context = true,
	show_current_context_start = true
}
require('lspconfig').pylsp.setup {}
require('lspconfig').rust_analyzer.setup {}
require('lspconfig').sumneko_lua.setup {
	settings = {
		telemetry = {
			enable = true,
		}
	}
}
require('nvim-treesitter.configs').setup( {
	ensure_installed = { 'python', 'rust', 'lua', 'bash', 'help', 'cpp' },

	highlight = {
		enable = true
	},
	indent = {
		enable = true
	}
} )

-- =============== --
-- ===== EOF ===== --
-- =============== --
