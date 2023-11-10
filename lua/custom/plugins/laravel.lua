vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
return {
	"adalessa/laravel.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"tpope/vim-dotenv",
		"MunifTanjim/nui.nvim"
	},
	cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
	keys = {
		{ "<leader>la", ":Laravel artisan<cr>", { desc = 'Laravel: Artisan' } },
		{ "<leader>lr", ":Laravel routes<cr>",  { desc = 'Laravel: Show routes' } },
		{ "<leader>lm", ":Laravel related<cr>", { desc = 'Laravel: Show related' } },
		{
			"<leader>lt",
			function()
				require("laravel.tinker").send_to_tinker()
			end,
			mode = "v",
			desc = "Laravel: send selection to tinker"
		},
		{ "<leader>lg", ":Artisan ide-helper:generate<cr>", { desc = 'Laravel: ide helper generate' } },
		{ "<leader>lm", ":Artisan ide-helper:models<cr>",   { desc = 'Laravel: ide helper models metadata' } },

	},
	event = { "VeryLazy" },
	config = function()
		require("laravel").setup({
			environment = {
				resolver = require "laravel.environment.resolver" (false, false, "docker-compose"),
				environments = {
					["docker-compose"] = require("laravel.environment.docker_compose").setup({
						container_name =
						"web"
					}),
				}
			}
		})
		require("telescope").load_extension "laravel"
	end
}
