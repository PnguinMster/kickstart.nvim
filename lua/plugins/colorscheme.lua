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
      default_integrations = false,

      integrations = {
        -- gitsigns = false,
        -- nvimtree = false,
        -- notify = false,
        fidget = true,
        harpoon = true,
        mason = true,
        cmp = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
            ok = { 'italic' },
          },
          underlines = {
            errors = { 'underline' },
            hints = { 'underline' },
            warnings = { 'underline' },
            information = { 'underline' },
            ok = { 'underline' },
          },
          inlay_hints = {
            background = true,
          },
        },
        treesitter = true,
        telescope = { enabled = true },
        which_key = true,
        -- mini = {
        --   enabled = true,
        --   indentscope_color = '',
        -- },
      },

      custom_highlights = function()
        return {
          CursorLine = { bg = 'none' },
          -- MiniStatuslineFilename = { bg = 'none' },
        }
      end,
    },
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme('tokyonight-night')
      vim.cmd.colorscheme('catppuccin-mocha')

      -- You can configure highlights by doing something like:
      -- vim.cmd.hi('Comment gui=none')
    end,
  },

  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  --
  --   opts = {
  --     variant = 'moon',
  --     styles = {
  --       transparency = true,
  --     },
  --   },
  -- },
}
