return { 
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",  -- lazy-load when entering insert mode
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true,  -- enable treesitter integration
                enable_check_bracket_line = false,
                fast_wrap = {},
            })
        end
    },

}     
