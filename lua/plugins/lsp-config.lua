return {
	{
	"williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end
	},
	{
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {"lua_ls", "bashls", "clangd", "cssls", "dockerls", "html", "jsonls", "tsserver", "pylsp", "sqlls"}
		})
	end
	},
	{
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			capabilities = capabilities
		})
		lspconfig.bashls.setup({
			capabilities = capabilities
		})
		lspconfig.clangd.setup({
			capabilities = capabilities
		})
		lspconfig.cssls.setup({
			capabilities = capabilities
		})
		lspconfig.dockerls.setup({
			capabilities = capabilities
		})
		lspconfig.html.setup({
			capabilities = capabilities
		})
		lspconfig.jsonls.setup({
			capabilities = capabilities
		})
		lspconfig.tsserver.setup({
			capabilities = capabilities
		})
		lspconfig.pylsp.setup({
			capabilities = capabilities
		})
		lspconfig.sqlls.setup({
			capabilities = capabilities
		})

		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, {})
	end
	}
}
