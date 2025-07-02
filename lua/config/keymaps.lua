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

vim.keymap.set("n", "<F5>", function()
  vim.cmd("w") -- Save file
  local filetype = vim.bo.filetype
  local filename = vim.fn.expand("%")

  if filetype == "python" then
    vim.cmd("TermExec cmd='python3 " .. filename .. "'")
  elseif filetype == "javascript" then
    vim.cmd("TermExec cmd='node " .. filename .. "'")
  elseif filetype == "c" then
    vim.cmd("TermExec cmd='gcc " .. filename .. " -o out && ./out'")
  else
    print("Unsupported filetype: " .. filetype)
  end
end, { desc = "Run file", noremap = true, silent = true })
