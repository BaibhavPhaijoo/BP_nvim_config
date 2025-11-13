-- to show hints and messages
vim.keymap.set(
    { "n" },                 -- normal mode
    "<leader>i",                     -- key to press
    vim.lsp.buf.hover,       -- function to call
    { noremap = true, silent = true }
)

-- Function to create a new file silently
function CreateFileWithoutOpening()
    local filename = vim.fn.input("New file: ")
    if filename ~= "" then
        local file = io.open(filename, "w")  -- create file
        if file then
            file:close()
            print("File created: " .. filename)
        else
            print("Error creating file: " .. filename)
        end
    end
end

-- Keymap to trigger it: <leader>nf
vim.api.nvim_set_keymap("n", "<leader>nf", ":lua CreateFileWithoutOpening()<CR>", { noremap = true, silent = true })

-- To move one character ahead and go into insert mode --
--
vim.keymap.set(
    "i",
    "<C-l>", "<Right>",
    { noremap = true, silent = true 
})


vim.keymap.set(
    "i",
    "<C-j>", "<Left>",
    { noremap = true, silent = true 
})

vim.keymap.set(
    {"n"},
    "<leader>e", ":Ex<enter>",
    {noremap = true, silent = true
})

-- To switch between buffers
---------------------------------
vim.keymap.set (
    "n",
    "<leader>H", ":bn<enter>",
    {noremap = true, silent = true
})


vim.keymap.set (
    "n",
    "<leader>L", ":bp<enter>",
    {noremap = true, silent = true
}) ---------------------------------

vim.keymap.set("n",
"<leader>z", ":ZenMode<CR>",
{ desc = "Toggle Zen Mode" })


-- to build code
vim.keymap.set (
    "n",
    "<leader>mk", ":make<enter>",
    {noremap = true, silent = true
})


vim.keymap.set (
    "n",
    "<leader><leader>", ":norm gg=G<enter>",
    {noremap = true, silent = true
})


vim.api.nvim_set_keymap(
    'n', '<leader>nt', ':NvimTreeToggle<CR>', 
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n', '<leader>vs', ':vsplit<CR>', 
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n', '<leader>s', ':split<CR>', 
    { noremap = true, silent = true }
)
