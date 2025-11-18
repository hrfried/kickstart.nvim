-- ~/.config/nvim/lua/custom/overrides/filetypes.lua

-- Automatically detect _service files as XML in Neovim
vim.filetype.add({
  filename = { ["_service"] = "xml" },
  pattern = { [".*/_service$"] = "xml" },
})

-- vim.filetype.add({
--   filename = {
--     ["_service"] = "xml",
--   },
--   pattern = {
--     [".*/_service$"] = "xml",
--   },
-- })

-- return {
--   {
--     -- This is not a plugin, just a user module
--     name = "custom-filetypes",
--     config = function()
--       vim.filetype.add({
--         filename = {
--           ["_service"] = "xml",
--         },
--         pattern = {
--           [".*/_service$"] = "xml",
--         },
--       })
--     end,
--   },
-- }


-- Custom filetype detection
-- vim.filetype.add({
-- 	filename = {
-- 		["_service"] = "xml",
-- 	},
-- 	pattern = {
-- 		[".*/_service$"] = "xml",
-- 	},
-- })
