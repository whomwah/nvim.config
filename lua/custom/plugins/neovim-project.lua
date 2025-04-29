return {
  'coffebar/neovim-project',
  opts = {
    projects = { -- define project roots
      '~/_dev/kyan/pitstop-mobile/',
      '~/_dev/kyan/advertising-uuid/',
      '~/_dev/kyan/premier-league-ics/',
      '~/_dev/kyan/premier-league-ics-backend/',
      '~/_dev/whomwah/rqrcode_project/*',
      '~/_dev/whomwah/whomwah-website/',
      '~/_dev/whomwah/webgl/webgl-demo/',
      '~/.config/nvim/',
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append 'globals' -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    -- optional picker
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8' },
    { 'Shatur/neovim-session-manager' },
  },
  keys = {
    {
      '<leader>p',
      ':NeovimProjectDiscover<CR>',
      mode = 'n',
      desc = 'Discover Neovim [P]rojects',
      silent = true,
    },
  },
  lazy = false,
  priority = 100,
}
