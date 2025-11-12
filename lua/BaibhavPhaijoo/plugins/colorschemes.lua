return  {
    {
        "EdenEast/nightfox.nvim",
        lazy = false, -- load during startup
        priority = 1000, -- make sure it loads before other plugins
        config = function()
            -- Pick your favorite variant: "nightfox", "duskfox", "dawnfox", "terafox", "carbonfox", etc.
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                --- You can customize options here ---
                dark_variant = "moon", -- "moon", "dawn", or "main"
                disable_background = false,
                disable_float_background = true,
                highlight_groups = {},
            })
            -- vim.cmd("colorscheme rose-pine")
        end,
    },
    {
        "vague-theme/vague.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require("vague").setup({
                -- optional configuration here
            })
        end
    },   
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
    { "navarasu/onedark.nvim", priority = 1000 }

}
