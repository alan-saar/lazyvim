-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>tp", ":TestSuite<cr>", { desc = "[T]est [P]roject" })
vim.keymap.set("n", "<leader>tv", ":TestVisit<cr>", { desc = "[T]est [V]isit" })

-- oil com o keymap do vim-vinegar
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
