vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
  -- VSCode extension
  require 'config.keymaps-vscode'
else
  -- Check if a node_modules/.bin directory exists in the current working directory
  local project_bin = vim.fn.getcwd() .. '/node_modules/.bin'
  if vim.fn.isdirectory(project_bin) == 1 then
    vim.env.PATH = vim.env.PATH .. ':' .. project_bin
  end

  require 'config.options'
  require 'config.auto-commands'
  require 'config.lazy'
  require 'config.keymaps'
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
