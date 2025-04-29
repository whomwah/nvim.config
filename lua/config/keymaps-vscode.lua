-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable the `q` key for recording macros
vim.keymap.set('n', 'q', '<Nop>', { desc = 'Move focus to the upper window', noremap = true, silent = true })
