
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- Size of the terminal window
      size = 20,

      -- Open terminal in horizontal, vertical, or floating mode
      open_mapping = [[<c-\>]], -- keymap to toggle
      direction = "float",      -- "horizontal" | "vertical" | "tab" | "float"

      -- Shade background of terminal
      shade_terminals = true,
      shading_factor = 2,

      -- Start in insert mode
      start_in_insert = true,

      -- Persist size across sessions
      persist_size = true,

      -- Close terminal when process exits
      close_on_exit = true,

      -- Shell to use
      shell = vim.o.shell,
    },
    keys = {
      { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical terminal" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal terminal" },
    },
  },
}
