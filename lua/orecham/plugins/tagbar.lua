-- tagbar integration

return {
  "preservim/tagbar",
  config = function()
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<F8>", ":TagbarToggle<CR>", { desc = "Toggle tagbar visibility" })
  end,
}
