vim.api.nvim_create_user_command("RpmChangelogFormat", function()
  vim.bo.textwidth = 67
  vim.cmd.normal({ "gqap", bang = true })
end, {})

vim.keymap.set("n", "<leader>Hc", "<cmd>RpmChangelogFormat<CR>", {
  desc = "RPM changelog format",
})

