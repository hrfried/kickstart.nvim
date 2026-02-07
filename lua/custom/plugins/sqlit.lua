return {
  "Maxteabag/sqlit.nvim",
  opts = {
      -- theme = "textual-ansi",  -- theme to use (textual-ansi inherits terminal colors)
      theme = "monokai",  -- theme to use (textual-ansi inherits terminal colors)
      keymap = "<leader>D",    -- keymap to open sqlit (set to false to disable)
      desc = "Database (sqlit)", -- keymap description
      args = "",               -- additional CLI arguments
  },
  keys = {
    { "<leader>D", function() require("sqlit").open() end, desc = "Database (sqlit)" },
  },
}
