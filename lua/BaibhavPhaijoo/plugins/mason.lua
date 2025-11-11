return {
    {

        "williamboman/mason.nvim",
        lazy = false, -- load on startup
        priority = 1000, -- make sure it loads before other plugins
        config = function()
            require("mason").setup()
        end,
    }
}
