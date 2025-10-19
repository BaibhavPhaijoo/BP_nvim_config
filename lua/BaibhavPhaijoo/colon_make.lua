
-- Auto-set makeprg based on filetype
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local ft = vim.bo.filetype
    if ft == "c" then
      vim.opt_local.makeprg = "gcc -Wall -o %:r %"

    elseif ft == "cpp" then
      vim.opt_local.makeprg = "g++ -Wall -o %:r %"

    elseif ft == "python" then
      vim.opt_local.makeprg = "python3 %"

    elseif ft == "rust" then
      vim.opt_local.makeprg = "cargo build"

    elseif ft == "cs" then
      vim.opt_local.makeprg = "dotnet build"

    end
  end,
})
