return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'BufReadPost',
  dependencies = { 'nvim-lua/plenary.nvim', lazy = true },

  settings = {
    save_one_toggle = true,
  },
  config = function()
    local harpoon = require('harpoon')

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to Harpoon' })
    vim.keymap.set('n', '<C-s>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open Harpoon Menu' })

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon to 1' })
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon to 2' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon to 3' })
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon to 4' })
    vim.keymap.set('n', '<leader><C-h>', function()
      harpoon:list():replace_at(1)
    end, { desc = '[R]eplace Harpoon 1' })
    vim.keymap.set('n', '<leader><C-j>', function()
      harpoon:list():replace_at(2)
    end, { desc = '[R]eplace Harpoon 2' })
    vim.keymap.set('n', '<leader><C-k>', function()
      harpoon:list():replace_at(3)
    end, { desc = '[R]eplace Harpoon 3' })
    vim.keymap.set('n', '<leader><C-l>', function()
      harpoon:list():replace_at(4)
    end, { desc = '[R]eplace Harpoon 4' })
  end,
}
