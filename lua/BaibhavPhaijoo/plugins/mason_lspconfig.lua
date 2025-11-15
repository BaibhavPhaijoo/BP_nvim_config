return {
    {
        "williamboman/mason-lspconfig.nvim",
        event = "BufReadPre",
        priority = 1000, -- make sure it loads before other plugins

        config = function()
            require("mason-lspconfig").setup()
        end,
    }
}
