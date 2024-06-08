return {
  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = { 'BufReadPost', 'InsertEnter' },
    dependencies = { 'nvim-lua/plenary.nvim', lazy = true },
    opts = { signs = false },
  },
}
