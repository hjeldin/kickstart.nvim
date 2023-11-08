return {
	"nvim-neotest/neotest",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"olimorris/neotest-phpunit",
		"thenbe/neotest-playwright"
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-phpunit")({
					filter_dirs = { "storage", "vendor", "node_modules", ".git", "docker" }
				}),
				require("neotest-playwright").adapter({
					options = {
						persist_project_selection = true,
						enable_dynamic_test_discovery = true
					}
				})
			},
			log_level = vim.log.levels.TRACE
		})
	end,
	keys = {
		{ "<leader>ta", "<cmd>lua require('neotest').run.attach()<cr>",                     desc = "Attach to the nearest test" },
		{ "<leader>tl", "<cmd>lua require('neotest').run.run_last()<cr>",                   desc = "Rerun last test" },
		{ "<leader>to", "<cmd>lua require('neotest').output_panel.toggle()<cr>",            desc = "Toggle Test Output Panel" },
		{ "<leader>tp", "<cmd>lua require('neotest').run.stop()<cr>",                       desc = "Stop the nearest test" },
		{ "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>",                 desc = "Toggle Test Summary" },
		{ "<leader>tt", "<cmd>lua require('neotest').run.run()<cr>",                        desc = "Run the nearest test" },
		{ "<leader>tT", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",      desc = "Run test the current file" },
		{ "<leader>tw", "<cmd>lua require('neotest').watch.toggle(vim.fn.expand('%'))<cr>", desc = "Watch the current file" },
	},
}
