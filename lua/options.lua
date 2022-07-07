-- ======================= --
-- ===== Option sets ===== --
-- ======================= --

vim.opt.rnu = true
vim.opt.number = true
vim.opt.background = "dark"
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.hidden = true

vim.opt.runtimepath:prepend { "/.vim" }
vim.opt.runtimepath:append { "/.vim/after" }
vim.opt.runtimepath:append { "/home/scysta/.local/share/nvim/site/pack/*/opt/*" }

vim.o.packpath = runtimepath

vim.opt.guifont = "JetBrainsMono Nerd Font:h10"

-- =============== --
-- ===== EOF ===== --
-- =============== --
