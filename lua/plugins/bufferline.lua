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
		vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>")

	end,
}
