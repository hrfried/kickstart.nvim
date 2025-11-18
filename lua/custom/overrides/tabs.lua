-- Consistent indentation
vim.opt.tabstop = 4          -- number of visual spaces per TAB
vim.opt.shiftwidth = 4       -- spaces per indentation level
vim.opt.softtabstop = 4      -- how many spaces a <Tab> counts for in insert mode
vim.opt.expandtab = true     -- use spaces instead of tabs
-- expandtab false makes the annoying fucking inconsistent tabs with ugly ass >> marker
-- vim.opt.expandtab = false -- use spaces instead of tabs

-- Maintain indentation style automatically
vim.opt.preserveindent = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

