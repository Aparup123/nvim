-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return
-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
{
	"numToStr/Comment.nvim",
	dependencies={
'JoosepAlviste/nvim-ts-context-commentstring',
		},
	config = function()
		require("Comment").setup({

	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
		})
	end,
	opts = {
		-- add any options here
	},
	lazy = false,
}
