
vim.o.number = true
vim.o.relativenumber = true

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "  -- optional, for buffer-local mappings


-- Use spaces instead of tab characters
vim.o.expandtab = true
-- Number of spaces for each tab
vim.o.tabstop = 4
-- Number of spaces used for each level of autoindent
vim.o.shiftwidth = 4
-- When using >> or <<, use shiftwidth
vim.o.smartindent = true

-- to remove the intro text
vim.opt.shortmess:append("I")

vim.o.clipboard = "unnamedplus"

-- vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme carbonfox")
-- vim.cmd("colorscheme onedark")
vim.cmd("colorscheme gruvbox")

-- vim.cmd("colorscheme vague")


