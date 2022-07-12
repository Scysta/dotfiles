-- ========================== --
-- Mappings organized by mode --
-- ========================== --

--local kset = vim.keymap.set
local opts = { noremap=true, silent=true }

-- ===== Vanilla ===== -- 

-- Normal 
vim.keymap.set("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-n>", ":bnext<CR>", opts)
vim.keymap.set("n", "<C-p>", ":bprev<CR>", opts)
vim.keymap.set("n", "<leader>d", ":bd!<CR>", opts)
vim.keymap.set("n", "<leader>h", ":bo :sp<CR>:term<CR>:resize8<CR>i")
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>", opts)
--vim.keymap.set('n', '<leader>h', ':call TermToggle(8)<CR>')

-- Terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", opts)

-- Insert 
vim.keymap.set("i", "<C-l>", "<C-x><C-l>", opts)
vim.keymap.set("i", "<C-d>", "<C-x><C-k>", opts)
vim.keymap.set("i", "<C-f>", "<C-x><C-f>", opts)

-- ===== Telescope ===== --

-- Normal
vim.keymap.set("n", "<leader>ff", ":lua require('telescope.builtin').find_files { follow = true }<CR>", opts)
vim.keymap.set("n", "<leader>fp", ":lua require('telescope.builtin').find_files({ search_dirs = { '/home/scysta/homework', '/home/scysta/projects' } })<CR>", opts)
vim.keymap.set("n", "<leader>fc", ":lua require('telescope.builtin').find_files({ search_dirs = { '/home/scysta/dotfiles' } })<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>", opts)
vim.keymap.set("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>", opts)
vim.keymap.set("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", opts)
vim.keymap.set("n", "<leader>fo", ":lua require('telescope.builtin').oldfiles()<CR>", opts)

-- ===== COQ ===== --
-- Normal
vim.g.coq_settings = {
	keymap = {
		jump_to_mark = "null",
		bigger_preview = "null"
	}
}
--local vim.g.coq_settings = { "keymap.bigger_preview" = null }

-- ===== Twilight & Zen ===== --
--vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>")
--vim.keymap.set("n", "<leader>tw", ":Twilight<CR>")

-- ==================== --
-- 			EOF 		--
-- ==================== --
