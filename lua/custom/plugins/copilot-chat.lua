-- Plugin: CopilotChat.nvim

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      show_help = "yes",
      debug = false,
    },
    build = function()
      vim.notify("Please run ':UpdateRemotePlugins' and restart Neovim.")
    end,
    keys = {
      -- Ask a question in the chat
      {
        "<leader>ccq",
        function()
          local input = vim.fn.input("Ask Copilot: ")
          if input ~= "" then
            vim.cmd("CopilotChatInPlace " .. input)
          end
        end,
        desc = "CopilotChat - Ask question in-place",
      },
    },
  }
}
