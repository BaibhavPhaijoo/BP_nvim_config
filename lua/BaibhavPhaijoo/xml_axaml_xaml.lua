
-- Tell Neovim to treat .xaml and .axaml as XML
vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
    pattern = {"*.xaml","*.axaml"},
    command = "set filetype=xml"
})
