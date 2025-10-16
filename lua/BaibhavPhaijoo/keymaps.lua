-- to show hints and messages
vim.keymap.set(
    { "n" },                 -- normal mode
    "K",                     -- key to press
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
    "<C-j>", "<Right>",
    { noremap = true, silent = true 
})
