-- ========================== --
-- Mappings organized by mode --
-- ========================== --

local kset = vim.keymap.set

-- ===== Vanilla ===== -- 

-- Normal 
vim.keymap.set('n', '<Space>', '<Nop>')
vim.g.mapleader = ' '

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-n>', ':bnext<CR>')
vim.keymap.set('n', '<C-p>', ':bprev<CR>')
vim.keymap.set('n', '<leader>d', ':bd!<CR>')
vim.keymap.set('n', '<leader>h', ':call TermToggle(8)<CR>')

-- Terminal
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- Insert 
vim.keymap.set('i', '<C-l>', '<C-x><C-l>')
vim.keymap.set('i', '<C-d>', '<C-x><C-k>')
vim.keymap.set('i', '<C-f>', '<C-x><C-f>')

-- ===== Telescope ===== --

-- Normal
vim.keymap.set('n', '<leader>ff', ":lua require('telescope.builtin').find_files()<CR>")
vim.keymap.set('n', '<leader>fg', ":lua require('telescope.builtin').live_grep()<CR>")
vim.keymap.set('n', '<leader>fb', ":lua require('telescope.builtin').buffers()<CR>")
vim.keymap.set('n', '<leader>fh', ":lua require('telescope.builtin').help_tags()<CR>")

-- ==================== --
-- 			EOF 		--
-- ==================== --
