return {
  "tomasky/bookmarks.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local bookmarks = require("bookmarks");
    bookmarks.setup({
      -- sign_priority = 8,  --set bookmark sign priority to cover other sign
      save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
      keywords = {
        ["@t"] = "☑️ ",                         -- mark annotation startswith @t ,signs this icon as `Todo`
        ["@w"] = "⚠️ ",                         -- mark annotation startswith @w ,signs this icon as `Warn`
        ["@f"] = "⛏ ",                            -- mark annotation startswith @f ,signs this icon as `Fix`
        ["@n"] = " ",                            -- mark annotation startswith @n ,signs this icon as `Note`
      },
    });

    -- Keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "mm", bookmarks.bookmark_toggle, { desc = "Toggle bookmark at current line" })
    keymap.set("n", "mi", bookmarks.bookmark_ann, { desc = "Add or remove bookmark annotation at current line" })
    keymap.set("n", "mc", bookmarks.bookmark_clean, { desc = "Clean all bookmarks in local buffer" })
    keymap.set("n", "mn", bookmarks.bookmark_next, { desc = "Jump to next bookmark in local buffer" })
    keymap.set("n", "mp", bookmarks.bookmark_prev, { desc = "Jump to previous bookmark in local buffer" })
    keymap.set("n", "ml", bookmarks.bookmark_list, { desc = "List all bookmarks" })
    keymap.set("n", "mx", bookmarks.bookmark_clear_all, { desc = "Clean all bookmarks globally" })

    -- Telescope Integration
    local telescope = require("telescope");
    telescope.load_extension("bookmarks")
  end
}
