vim.keymap.set('n', '<C-i>', ':Telescope session-lens search_session<CR>')
return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup {
			pre_save_cmds = { "Neotree action=close", ":lua require('neotest').summary.close()" },
		}
	end
}
