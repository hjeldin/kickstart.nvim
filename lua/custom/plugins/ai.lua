return {
	'David-Kunz/gen.nvim',
	config = function()
		vim.keymap.set('n', '<leader>ci', ':Gen<CR>', { silent = true })
		vim.keymap.set('v', '<leader>ci', ':Gen<CR>', { silent = true })
	end
}
