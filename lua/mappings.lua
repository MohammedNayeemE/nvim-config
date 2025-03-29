require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
 -- command to open and close plugin window

-- prefered keymap for conciseness
vim.keymap.set("n", "<leader>a", "<cmd>AssistantToggle<cr>", { desc = "Assistant window toggle" })
-- map(":" , "c")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
