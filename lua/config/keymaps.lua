--
-- Keymaps are automatically loaded on the VeryLazy even
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua-- Add any additional keymaps her

-- jk to escape insert mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

-- Ctrl+S to escape insert mode
vim.keymap.set("i", "<C-s>", "<Esc>", { desc = "Exit insert mode with Ctrl+S" })

-- Move to beginning of line with H
vim.keymap.set("n", "H", "^", { desc = "Go to start of line" })

-- Move to end of line with L
vim.keymap.set("n", "L", "$", { desc = "Go to end of line" })

vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })

vim.keymap.set({ "n", "i", "v" }, "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

vim.opt.clipboard = "unnamedplus"
