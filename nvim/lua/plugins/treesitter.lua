return {
	'nvim-treesitter/nvim-treesitter',
	config=function()
		local treeSitter=require("nvim-treesitter.configs")
		treeSitter.setup({
			auto_install=true,
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "typescript", "json", "css" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})


	end,
}
