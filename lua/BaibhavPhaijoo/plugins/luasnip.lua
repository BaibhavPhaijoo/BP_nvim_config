return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- follow latest stable release
        uild = "make install_jsregexp", -- optional: enables regex support
        dependencies = {
            "rafamadriz/friendly-snippets", -- community snippets
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    }
}
