vim.g.mapleader = ","
vim.keymap.set("i", "<leader>.", "<Esc>")
vim.keymap.set("n", "<leader>e", vim.cmd.q)
vim.keymap.set("n", "<leader>u", vim.cmd.NvimTreeOpen)
vim.keymap.set("n", "<leader>t", vim.cmd.terminal)

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
