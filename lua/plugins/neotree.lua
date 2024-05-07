 return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},

	config = function()
		local neotree = require("neo-tree")
		neotree.setup({
			source_selector = {
				winbar = false,
				statusline = false,
			},
		event_handlers = {
			{
				event = "neo_tree_buffer_enter",
				handler = function(arg)
					vim.cmd([[
              setlocal relativenumber
            ]])
				end,
			},
		},
			view = {
				adaptive_size = true,
			},
		})
	end,
}
