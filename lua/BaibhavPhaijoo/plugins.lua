
require("lazy").setup({ 
    {
        "EdenEast/nightfox.nvim",
        lazy = false, -- load during startup
        priority = 1000, -- make sure it loads before other plugins
        config = function()
            -- Pick your favorite variant: "nightfox", "duskfox", "dawnfox", "terafox", "carbonfox", etc.
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
            vim.keymap.set("n", " ff", builtin.find_files, { desc = "Find files" })
            vim.keymap.set("n", " fg", builtin.live_grep, { desc = "Live grep" })
            vim.keymap.set("n", " fb", builtin.buffers, { desc = "Buffers" })
            vim.keymap.set("n", " fh", builtin.help_tags, { desc = "Help tags" })
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
    { "hrsh7th/cmp-buffer" },    

    {
        "neovim/nvim-lspconfig",
        lazy = false,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",  -- lazy-load when entering insert mode
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true,  -- enable treesitter integration
                enable_check_bracket_line = false,
                fast_wrap = {},
            })
        end
    },

    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- follow latest stable release
        build = "make install_jsregexp", -- optional: enables regex support
        dependencies = {
            "rafamadriz/friendly-snippets", -- community snippets
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional, for nice filetype icons
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto", -- picks colors based on your colorscheme
                },
            })
        end,
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
    { "navarasu/onedark.nvim", priority = 1000 }

})     
