return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = true,

    opts = {
      transparent_background = true,
      -- native_lsp = {
      --   enabled = true,
      -- },
      which_key = true,
      nvimtree = false,
      notify = false,
    },
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme('tokyonight-night')
      vim.cmd.colorscheme('catppuccin-macchiato')

      -- You can configure highlights by doing something like:
      vim.cmd.hi('Comment gui=none')
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',

    opts = {
      variant = 'moon',
      styles = {
        transparency = true,
      },
    },
  },
}
