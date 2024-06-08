return {
  -- Git Stuff
  'mbbill/undotree',
  event = { 'BufReadPost', 'InsertEnter' },
  config = function()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
  end,
}
