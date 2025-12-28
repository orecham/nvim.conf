require("orecham.core")
require("orecham.lazy")

-- Use system clipboard with Wayland
if os.getenv("WAYLAND_DISPLAY") then
  vim.g.clipboard = {
    name = 'wl-clipboard',
    copy = {
      ['+'] = 'wl-copy',
      ['*'] = 'wl-copy',
    },
    paste = {
      ['+'] = 'wl-paste --no-newline',
      ['*'] = 'wl-paste --no-newline',
    },
    cache_enabled = 0,
  }
end
