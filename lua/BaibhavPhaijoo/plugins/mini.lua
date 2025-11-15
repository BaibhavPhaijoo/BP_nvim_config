
return {
    {
        "echasnovski/mini.nvim",
        version = false,
        config = function()
            local starter = require('mini.starter')

            starter.setup({
                header = table.concat({
                    "_______             ____   ____.__           ",
                    " \\      \\   ____  ___\\   \\ /   /|__| _____   ",
                    " /   |   \\_/ __ \\/  _ \\   Y   / |  |/     \\  ",
                    "/    |    \\  ___(  <_> )     /  |  |  Y Y  \\ ",
                    "\\____|__  /\\___  >____/ \\___/   |__|__|_|  / ",
                    "       \\/     \\/                        \\/   ",
                }, "\n"),

                items = {
                    { name = "New file",  action = function() vim.cmd.enew() end, section = "Actions" },
                    { name = "Find file", action = function() require('telescope.builtin').find_files() end, section = "Actions" },
                    { name = "Recent",    action = function() require('telescope.builtin').oldfiles() end, section = "Actions" },
                    { name = "Quit",      action = function() vim.cmd.qa() end, section = "Actions" },
                },
                footer = '',
            })

            vim.api.nvim_set_hl(0, "MiniStarterHeader", { fg = "#C678DD", bold = true })

            --  Add hjkl navigation inside starter buffer
            vim.api.nvim_create_autocmd("FileType", {
                pattern = "starter",
                callback = function()
                    local map = vim.keymap.set
                    local opts = { buffer = true, silent = true }
                    map("n", "j", "<Down>", opts)
                    map("n", "k", "<Up>", opts)
                    map("n", "h", "<Left>", opts)
                    map("n", "l", "<Right>", opts)
                    map("n", "<CR>", "<CR>", opts) -- Enter executes item
                end,
            })
        end,
    }
}
