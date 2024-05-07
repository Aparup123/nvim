vim.opt.relativenumber=true
vim.g.have_nerd_font=true
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.g.mapleader=" "
vim.opt.cursorline=true
vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle left<CR>")
vim.api.nvim_set_option("clipboard","unnamed")
vim.api.nvim_set_hl(0, 'CursorLine', { underline = true })
vim.keymap.set('n','<leader>bn', ':bn<CR>')
vim.keymap.set('n','<leader>bp', ':bp<CR>')
vim.keymap.set('n','<leader>bd', ':bd<CR>')

