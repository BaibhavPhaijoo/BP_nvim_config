return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional, for nice filetype icons
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto", -- picks colors based on your colorscheme
                },
            })
        end,
    }
}
