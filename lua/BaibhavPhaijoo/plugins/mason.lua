return {
    {

        "williamboman/mason.nvim",
        event = "BufReadPre",
        priority = 1000, -- make sure it loads before other plugins
        config = function()
            require("mason").setup()
        end,
    }
}
