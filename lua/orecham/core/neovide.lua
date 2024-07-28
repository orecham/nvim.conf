if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.5
  vim.g.neovide_transparency = 1.0
  vim.opt.guifont = { "Source Code Pro", ":h12" }
end

local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
  change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-->", function()
  change_scale_factor(1 / 1.25)
end)
