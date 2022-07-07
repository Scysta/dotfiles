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

vim.call('plug#end')

require('nvim-surround').setup()
require('pears').setup()
require('lualine').setup()
require('telescope').setup()
require('lspconfig').pylsp.setup{}
require('nvim-treesitter.configs').setup( {
	ensure_installed = { 'python', 'rust', 'lua', 'bash', 'help', 'cpp' },

	highlight = {
		enable = true
	},
	indent = {
		enable = true
	}
} ) 


--"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
--"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
--"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
--if (empty($TMUX))
--  if (has("nvim"))
--    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
--    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
--  endif
--  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
--  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
--  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
--  if (has("termguicolors"))
--    set termguicolors
--  endif
--endif
--
--colorscheme tokyonight
--
--" Terminal Function
--let g:term_buf = 0
--let g:term_win = 0
--function! TermToggle(height)
--    if win_gotoid(g:term_win)
--        hide
--    else
--        botright new
--        exec "resize " . a:height
--        try
--            exec "buffer " . g:term_buf
--        catch
--            call termopen($SHELL, {"detach": 0})
--            let g:term_buf = bufnr("")
--            set nonumber
--            set norelativenumber
--            set signcolumn=no
--        endtry
--        startinsert!
--        let g:term_win = win_getid()
--    endif
--endfunction
