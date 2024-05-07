return {
	"akinsho/bufferline.nvim",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "Explorer",
					},
					{
						filetype="neo-tree",
						text="Explorer",
					}
				},
			},
		})
	end,
}
