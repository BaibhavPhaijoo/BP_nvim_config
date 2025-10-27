-- 
-- vim.diagnostic.config({
--   virtual_text = {
--     format = function(diagnostic)
--       local symbols = {
--         [vim.diagnostic.severity.ERROR] = "●",  -- error
--         [vim.diagnostic.severity.WARN]  = "▎",  -- warning
--         [vim.diagnostic.severity.INFO]  = "»",  -- info
--         [vim.diagnostic.severity.HINT]  = " λ",  -- hint
--       }
--       return symbols[diagnostic.severity] .. diagnostic.message
--     end,
--   },
-- })


vim.diagnostic.config({
  virtual_text = {
    source = "always", -- show error source, like "eslint"
    prefix = "▎",      -- could be "■", "●", "x"
  },
  signs = true,        -- show signs in the gutter
  underline = true,    -- underline problematic text
  update_in_insert = true, --  update after you when you are in insert mode
})
