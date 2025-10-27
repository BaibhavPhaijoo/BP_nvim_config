require("nvim-tree").setup({
    -- Disable netrw (optional but recommended)
    disable_netrw = true,
    hijack_netrw = true,

    -- Update the focused file in the tree
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },

    -- Show git status
    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },

    -- Renderer options
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                git = true,
            },
        },
    },
})
