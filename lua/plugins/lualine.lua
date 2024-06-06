return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    init = function()
      vim.g.lualine_laststatus = vim.o.laststatus
      if vim.fn.argc(-1) > 0 then
        -- set an empty statusline till lualine loads
        vim.o.statusline = ' '
      else
        -- hide the statusline on the starter page
        vim.o.laststatus = 0
      end
    end,

    opts = function()
      local lualine_require = require('lualine_require')
      lualine_require.require = require
      return {
        options = {
          theme = 'auto',
          fmt = string.lower,
        },
        sections = {
          lualine_a = {
            {
              'mode',
              fmt = function(str)
                return str:sub(1, 1)
              end,
            },
          },
          lualine_b = { 'diagnostics', 'branch', 'diff' },
          lualine_x = { 'filetype' },
        },
      }
    end,
  },
}
