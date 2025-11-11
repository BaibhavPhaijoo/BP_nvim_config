return {
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        priority = 1000, -- make sure it loads before other plugins

        config = function()
            require("mason-lspconfig").setup()
        end,
    }
}
