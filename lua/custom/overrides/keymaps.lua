
-- These are just mapping the x delete functionality for single characters to the
-- black hole register so it doesn't replace the fucking register with a single character.
-- I really don't understand why this was ever a default or wanted behavior. Yes, I'm going
-- to reuse that solitary h in a hundred different places. /s
vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true })
vim.keymap.set('n', 'X', '"_X', { noremap = true, silent = true })
vim.keymap.set('x', 'x', '"_x', { noremap = true, silent = true })
-- Also map capital U to redo
-- vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })
vim.keymap.set('n', 'U', '<C-r>', { noremap = true })
-- nnoremap <leader>P :put +<CR>
-- nnoremap <leader>P :put +<CR>
vim.keymap.set('n', '<leader>p', ':put +<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>P', ':put! +<CR>', { noremap = true, silent = true })
