vim.wo.number = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

vim.pack.add {
		'https://github.com/dense-analysis/ale',
		{
			src = "https://github.com/catppuccin/nvim",
			name = "catppuccin"
		},
}
vim.cmd.colorscheme "catppuccin-mocha"
