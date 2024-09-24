-- linting

return {
  'dense-analysis/ale',
  config = function()
    -- Configuration goes here.
    local g = vim.g

    g.ale_ruby_rubocop_auto_correct_all = 1

    g.ale_linters = {
      markdown = { 'markdownlint' },
      typescript = { 'deno' },
      lua = { 'lua_language_server' }
    }
  end
}
