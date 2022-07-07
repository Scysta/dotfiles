-- ================================= --
-- Plugin declaration using vim-plug --
-- ================================= --

local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Colorschemes
Plug "ghifarit53/tokyonight-vim"
Plug "rebelot/kanagawa.nvim"

-- Functionality
Plug "steelsojka/pears.nvim"
Plug "kylechui/nvim-surround"
Plug "nvim-lua/plenary.nvim"
Plug "nvim-telescope/telescope.nvim"
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' } )
Plug "neovim/nvim-lspconfig"

-- UI
Plug "nvim-lualine/lualine.nvim"
Plug "kyazdani42/nvim-web-devicons"
Plug "lukas-reineke/indent-blankline.nvim"
Plug "folke/twilight.nvim"
Plug "folke/zen-mode.nvim"
Plug "folke/which-key.nvim"

vim.call('plug#end')


require('nvim-surround').setup {
	keymaps = {
		insert = "<leader>ys",
		visual = "<leader>S",
		delete = "<leader>ds",
		change = "<leader>cs"
	}
}
require('kanagawa').setup({})
require("twilight").setup {}
require("zen-mode").setup {
	window = {
		options = {
			number = true,
			relativenumber = true
		}
	}
}
require("which-key").setup {}
require('pears').setup()
require('lualine').setup({})
require('telescope').setup({})
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
require('nvim-treesitter.configs').setup {
	ensure_installed = { 'python', 'rust', 'lua', 'bash', 'help', 'cpp' },

	highlight = {
		enable = true
	},
	indent = {
		enable = true
	}
}

-- =============== --
-- ===== EOF ===== --
-- =============== --
