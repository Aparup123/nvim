return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "html", "cssls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.rust_analyzer.setup({
				-- Server-specific settings. See `:help lspconfig-setup`
				capabilities=capabilities,
				settings = {
					["rust-analyzer"] = {},
				},
			})
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.html.setup({})
			lspconfig.cssls.setup({})
			local opts = {}
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	},
}
