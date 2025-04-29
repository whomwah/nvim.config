return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'echasnovski/mini.pick',
  },
  opts = {},
  keys = {
    {
      '<leader>gg',
      ':Neogit<cr>',
      mode = 'n',
      desc = 'Open Neo[G]it',
    },
  },
}
