
return {
    "folke/zen-mode.nvim",
    lazy = true,
    config = function()
        require("zen-mode").setup({
            window = {
                -- backdrop = 0.95,      -- dim the background
                width = 120,          -- width of the Zen window
                options = {
                    number = false,
                    relativenumber = false,
                },
            },
            plugins = {
                options = { enabled = true, ruler = false, showcmd = false },
                gitsigns = { enabled = false },
            },
        })
    end,
}
