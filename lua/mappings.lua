require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Copilot commands
map('v', '<leader>ce', ':CopilotChatExplain<CR>', opts)
map('v', '<leader>cr', ':CopilotChatReview<CR>', opts)
map('v', '<leader>cf', ':CopilotChatFix<CR>', opts)
map('v', '<leader>co', ':CopilotChatOptimize<CR>', opts)
map('v', '<leader>cd', ':CopilotChatDocs<CR>', opts)
map('v', '<leader>ct', ':CopilotChatTests<CR>', opts)
map('v', '<leader>cfd', ':CopilotChatFixDiagnostic<CR>', opts)
map('n', '<leader>cc', ':CopilotChatCommit<CR>', opts)
map('n', '<leader>ccs', ':CopilotChatCommitStaged<CR>', opts)
