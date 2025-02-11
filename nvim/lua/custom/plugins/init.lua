-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   dir = '~/personal/vim-playground/nvim-chat/client',
  --   name = 'nvim-chat',
  --   config = function()
  --     local chat = require 'nvim-chat'
  --     chat.setup()
  --   end,
  --   dependencies = {
  --     'samsze0/websocket.nvim',
  --     'samsze0/utils.nvim',
  --   },
  -- },

  { 'github/copilot.vim' },
  { 'NStefan002/screenkey.nvim' },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-abolish' },
  { 'mg979/vim-visual-multi' },
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {
        view_options = {
          show_hidden = true,
        },
      }
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      local colorizer = require 'colorizer'
      colorizer.setup()
    end,
  },
  {
    'theprimeagen/harpoon',
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      vim.keymap.set('n', '<leader>ha', mark.add_file)
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
    end,
  },
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
  {
    'goolord/alpha-nvim',
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
  },
}
