-- ====================================== --
-- Language server protocol configuration --
-- ====================================== --

local opts = { silent=true }

vim.diagnostic.config({
	virtual_text = false
})

-- Normal
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, opts)
vim.keymap.set("n", "<leader>dh", vim.diagnostic.open_float, opts)

local on_attach = function(client, bufnr)
	local bufopts = { silent=true, buffer=bufnr }

	vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
end

require("lspconfig").pylsp.setup {
	on_attach = on_attach,
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = { "E265", "E266", "E501" }
				}
			}
		}
	}
}
require("lspconfig").rust_analyzer.setup {
	on_attach = on_attach
}
require("lspconfig").sumneko_lua.setup {
	on_attach = on_attach,
	settings = {
		telemetry = {
			enable = true,
		}
	}
}

-- =============== --
-- ===== EOF ===== --
-- =============== --
