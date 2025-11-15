return {
    {
        "echasnovski/mini.nvim",
        version = false,
        config = function()
            require('mini.starter').setup({
                header = table.concat({
                    "_______             ____   ____.__           ",
                    " \\      \\   ____  ___\\   \\ /   /|__| _____   ",
                    " /   |   \\_/ __ \\/  _ \\   Y   / |  |/     \\  ",
                    "/    |    \\  ___(  <_> )     /  |  |  Y Y  \\ ",
                    "\\____|__  /\\___  >____/ \\___/   |__|__|_|  / ",
                    "       \\/     \\/                        \\/   ",
                }, "\n"),

                items = {
                    { name = "New file",   action = "enew",                       section = "Actions" },
                    { name = "Find file",  action = "Telescope find_files",       section = "Actions" },
                    { name = "Recent",     action = "Telescope oldfiles",         section = "Actions" },
                    { name = "Quit",       action = "qa",                         section = "Actions" },
                },
                footer = '',
            })
            
        end,
    }
}
