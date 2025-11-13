return {
    {
        "kylechui/nvim-surround",
        version = "^3.0.0", -- Use for stability, omit for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration options here, or leave empty for defaults
            })
        end
    }
}

