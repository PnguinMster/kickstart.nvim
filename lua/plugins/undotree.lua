return {
  -- Git Stuff
  'mbbill/undotree',
  event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
  config = function()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
  end,
}
