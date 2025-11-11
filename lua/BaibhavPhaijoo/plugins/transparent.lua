return {
    {
        "tribela/transparent.nvim",
        event = "VimEnter",
        config = function()
            require("transparent").setup({
                -- optional settings here
                -- e.g. extra_groups = { "NormalFloat", "NvimTreeNormal" },
                -- excludes = { "SomeGroupYouDon’tWantTransparent" },
                -- auto = true,  (automatically apply transparency)
            })
        end,
    },
}
