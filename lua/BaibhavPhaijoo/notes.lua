function OpenNotesVsplit()
    vim.cmd("vsplit | e ~/OneDrive/Documents/notes_nvim/notes.txt")
end

function OpenNotesHsplit()
    vim.cmd("split | e ~/OneDrive/Documents/notes_nvim/notes.txt")
end

function OpenNotes()
    vim.cmd("e ~/OneDrive/Documents/notes_nvim/notes.txt")
end

vim.api.nvim_create_user_command("OpenNotesVsplit", OpenNotesVsplit, {})
vim.api.nvim_create_user_command("OpenNotesHsplit", OpenNotesHsplit, {})
vim.api.nvim_create_user_command("OpenNotes", OpenNotes, {})
