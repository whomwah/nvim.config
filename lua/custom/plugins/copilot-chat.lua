local prompts = {
  -- Code related prompts
  Explain = 'Please explain how the following code works.',
  Review = 'Please review the following code and provide suggestions for improvement.',
  Tests = 'Please explain how the selected code works, then generate unit tests for it.',
  Refactor = 'Please refactor the following code to improve its clarity and readability.',
  FixCode = 'Please fix the following code to make it work as intended.',
  FixError = 'Please explain the error in the following text and provide a solution.',
  BetterNamings = 'Please provide better names for the following variables and functions.',
  Documentation = 'Please provide documentation for the following code.',
  SwaggerApiDocs = 'Please provide documentation for the following API using Swagger.',
  SwaggerJsDocs = 'Please write JSDoc for the following API using Swagger.',
  -- Text related prompts
  Summarize = 'Please summarize the following text.',
  Spelling = 'Please correct any grammar and spelling errors in the following text.',
  Wording = 'Please improve the grammar and wording of the following text.',
  Concise = 'Please rewrite the following text to make it more concise.',
}

return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    {
      'github/copilot.vim',
      config = function()
        vim.cmd ':Copilot disable'
      end,
    },
    { 'nvim-lua/plenary.nvim', branch = 'master' },
    { 'nvim-telescope/telescope.nvim' },
  },
  build = 'make tiktoken', -- Only on MacOS or Linux
  opts = {
    question_header = '## Duncan ',
    answer_header = '## Copilot ',
    error_header = '## Error ',
    separator = '---',
    highlight_headers = false,
    model = 'claude-3.7-sonnet',
    prompts = prompts,
    mappings = {
      complete = {
        detail = 'Use @<Tab> or /<Tab> for options.',
        insert = '<Tab>',
      },
      show_help = {
        normal = '?',
      },
      submit_prompt = {
        normal = '<CR>',
        insert = '<C-CR>',
      },
    },
  },
  init = function()
    local chat = require 'CopilotChat'
    local select = require 'CopilotChat.select'

    vim.keymap.set('n', '<leader>at', ':CopilotChatToggle<CR>', { desc = 'Copilot Chat - Toggle', silent = true })
    vim.keymap.set('n', '<leader>ac', ':CopilotChatCommit<CR>', { desc = 'Copilot Chat - Create Commit Message', silent = true })
    vim.keymap.set('x', '<leader>ap', ':CopilotChatPrompts<CR>', { desc = 'Copilot Chat - Prompts', silent = true })
    -- vim.keymap.set('x', '<leader>ae', ':CopilotChatExplain<CR>', { desc = 'Copilot Chat - Explain', silent = true })
    -- vim.keymap.set('x', '<leader>af', ':CopilotChatFix<CR>', { desc = 'Copilot Chat - Fix', silent = true })
    -- vim.keymap.set('x', '<leader>ar', ':CopilotChatRefactor<CR>', { desc = 'Copilot Chat - Refactor', silent = true })
    -- vim.keymap.set('x', '<leader>at', ':CopilotChatTests<CR>', { desc = 'Copilot Chat - Add Test', silent = true })
    -- vim.keymap.set('x', '<leader>ad', ':CopilotChatDocs<CR>', { desc = 'Copilot Chat - Add Documentation', silent = true })
    vim.keymap.set('x', '<leader>aq', function()
      local input = vim.fn.input 'Quick Chat: '
      if input ~= '' then
        chat.ask(input, {
          selection = select.visual,
        })
      end
    end, { desc = 'Copilot Chat - Quick Chat', silent = true })
  end,
}
