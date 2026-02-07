vim.api.nvim_create_user_command("RpmChangelogFormat", function()
  -- 67-character wrap recommended by openSUSE https://en.opensuse.org/openSUSE:Creating_a_changes_file_(RPM)
  vim.bo.textwidth = 67

  -- bullet/list-aware wrapping, no auto comment continuation
  -- see :help fo-table
  vim.opt_local.comments = ""
  vim.opt_local.formatoptions = "tcqn"

  -- recognize -, *, + bullets as headers for formatting
  -- see :help formatlistpat or e.g. 
  -- rg -iC5 formatlistpat /usr/share/*vim/ --glob='*.lua' --glob='*.vim'
  -- for other examples in installed (neo)?vim packages
  vim.opt_local.formatlistpat = [[^\s*[-*+]\s\+]]

  -- copy indent from current line when starting a new line
  -- see :help ai or :help autoindent
  vim.opt_local.autoindent = true

  -- format: visual selection if any, otherwise format current paragraph
  if vim.fn.mode():match("[vV\22]") then
    vim.cmd.normal({ "gq", bang = true })
  else
    vim.cmd.normal({ "gqap", bang = true })
  end
end, {})

-- I can envision things going weird with multiple paragraphs/sections,
-- so an option to run on a block is probably useful...
vim.keymap.set({"n", "v" }, "<leader>Hc", "<cmd>RpmChangelogFormat<CR>", {
  desc = "RPM changelog format",
})
