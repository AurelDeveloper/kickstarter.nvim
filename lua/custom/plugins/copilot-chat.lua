return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'github/copilot.vim' },
      { 'nvim-lua/plenary.nvim' },
    },
    opts = {
      window = {
        layout = 'float', -- Options: 'vertical', 'horizontal', 'float', 'replace'
        width = 0.5,
        height = 0.6,
        border = 'single', -- Options: 'none', 'single', 'double', 'rounded', 'solid', 'shadow'
        relative = 'editor', -- Options: 'editor', 'win', 'cursor', 'mouse'
        winblend = 0, -- Set winblend to 0 for no transparency
      },
    },
    config = function(_, opts)
      local chat = require 'CopilotChat'

      -- Setup CopilotChat with options
      chat.setup(opts)

      -- Command to toggle the chat window
      vim.api.nvim_create_user_command('CopilotChatToggle', function()
        chat.toggle()
      end, {})
    end,
    keys = {
      -- Keybinding to toggle the chat window
      { '<leader>cc', '<cmd>CopilotChatToggle<cr>', desc = 'Toggle Copilot Chat' },
      { 'cce', 'CopilotChatExplain', desc = 'CopilotChat - Explain code' },
      { 'ccr', 'CopilotChatRefactor', desc = 'CopilotChat - Refactor code' },
      { 'ccn', 'CopilotChatBetterNamings', desc = 'CopilotChat - Better Naming' },
      { 'ccc', 'CopilotChatCommit', desc = 'CopilotChat - Generate commit message for all changes' },
    },
  },
}
