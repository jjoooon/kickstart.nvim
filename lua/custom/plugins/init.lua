-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"stevearc/oil.nvim",
		event = "BufReadPost",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require('oil').setup({
				view_options = {
					-- Show files and directories that start with "."
					show_hidden = true,
				},
			})
		end
	},
	{
		"ThePrimeagen/harpoon",
		cmd = "Harpoon",
		config = function()
			require('harpoon').setup({
				menu = {
					width = 120,
					height = 25,
				},
			})
		end
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } }
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		-- stylua: ignore
		keys = {
			{ "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
			{ "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
			{ "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
			{ "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
			{ "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
		},
	},
	{
		"okuuva/auto-save.nvim",
		cmd = "ASToggle",
		event = { "InsertLeave", "TextChanged" },
		opts = {
			execution_message = {
				enabled = false,
			},
			callbacks = {
				before_saving = function()
					-- save global autoformat status
					vim.g.OLD_AUTOFORMAT = vim.g.autoformat_enabled
					vim.g.autoformat_enabled = false
					vim.g.OLD_AUTOFORMAT_BUFFERS = {}
					-- disable all manually enabled buffers
					for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
						if vim.b[bufnr].autoformat_enabled then
							table.insert(vim.g.OLD_BUFFER_AUTOFORMATS, bufnr)
							vim.b[bufnr].autoformat_enabled = false
						end
					end
				end,
				after_saving = function()
					-- restore global autoformat status
					vim.g.autoformat_enabled = vim.g.OLD_AUTOFORMAT
					-- reenable all manually enabled buffers
					for _, bufnr in ipairs(vim.g.OLD_AUTOFORMAT_BUFFERS or {}) do
						vim.b[bufnr].autoformat_enabled = true
					end
				end,
			},
		},
	},
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end
	},
}
