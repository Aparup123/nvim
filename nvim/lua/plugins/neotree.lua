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
			filesystem={

        hijack_netrw_behavior = "open_current",
				follow_current_file={
					enabled=true,
				},
				filtered_items={
					visible=true,
					show_hidden_count=true,
					hide_dotfiles=false,
					hide_gitignore=false,
				},
			},
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

			container={
				width=10
			},
			view = {
				adaptive_size = true,
			},
		})
	end,
}
