-- to show hints and messages
vim.keymap.set(
    { "n" },                 -- normal mode
    "K",                     -- key to press
    vim.lsp.buf.hover,       -- function to call
    { noremap = true, silent = true }
)
