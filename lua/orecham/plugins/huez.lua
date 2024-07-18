-- colorscheme manager

return {
  "vague2k/huez.nvim",
  -- if you want registry related features, uncomment this
  -- import = "huez-manager.import"
  branch = "stable",
  event = "UIEnter",
  fallback = "default",
  config = function()
    require("huez").setup({
      theme_config_module = "scheme"
    })
  end,
}
