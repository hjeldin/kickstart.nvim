return {
	'ThePrimeagen/harpoon',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-lua/popup.nvim',
	},
	keys = {
		{
			'<leader>ma',
			':lua require("harpoon.mark").add_file()<CR>',
			noremap = true,
			silent = true,
			desc = 'Harpoon Mark',
		},
		{
			'<leader>mj',
			':lua require("harpoon.ui").nav_next()<CR>',
			noremap = true,
			silent = true,
			desc = 'Harpoon Next',
		},
		{
			'<leader>mk',
			':lua require("harpoon.ui").nav_prev()<CR>',
			noremap = true,
			silent = true,
			desc = 'Harpoon Prev',
		},
		{
			'<leader>mm',
			':lua require("harpoon.ui").toggle_quick_menu()<CR>',
			noremap = true,
			silent = true,
			desc = 'Quick toggle '
		}
	}
}
