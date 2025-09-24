
require("lazy").setup({ 
	{
		"EdenEast/nightfox.nvim",
		lazy = false, -- load during startup
		priority = 1000, -- make sure it loads before other plugins
		config = function()
			-- Pick your favorite variant: "nightfox", "duskfox", "dawnfox", "terafox", "carbonfox", etc.
			vim.cmd.colorscheme("nightfox")
		end,
	},

	{
		"williamboman/mason.nvim",
		lazy = false, -- load on startup
		config = function()
			require("mason").setup()
		end,
	},

	-- Optional helper to connect mason with lspconfig
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup()
		end,
	},


	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },  -- required
		lazy = false,
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					prompt_prefix = "🔍 ",
					selection_caret = " ",
					path_display = { "smart" },
				},
			})
			-- optional keymaps
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
		end,
	},

	{

		"hrsh7th/nvim-cmp",
		dependencies = { "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-nvim-lsp" },
		lazy = false,
		config = function()
			require("BaibhavPhaijoo.completion")  -- just call your file here
		end,


	},

	{
		"neovim/nvim-lspconfig",
		lazy = false,
	}

})     
