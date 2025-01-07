-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- remap ctrl movements to TmuxNavigate

vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTmuxNavigateLeft<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":NvimTmuxNavigateDown<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":NvimTmuxNavigateUp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":NvimTmuxNavigateRight<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-\\>", ":NvimTmuxNavigateLastActive<CR>", { noremap = true, silent = true })

-- good keymaps
-- paste over visual selection without losing what was yanked
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', { silent = true, desc = "Paste over visual selection" })
-- delete without copying to register
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { silent = true, desc = "Delete without copying to register" })
-- move lines up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
-- center screen after search
vim.api.nvim_set_keymap("n", "n", "nzzzv", { silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { silent = true })
-- Q for playing back macro in register q, both normal and visual mode
vim.api.nvim_set_keymap("n", "Q", "@qj", { silent = true })
vim.api.nvim_set_keymap("x", "Q", ":norm @q<CR>", { noremap = true, silent = true })

-- oil.nvim
vim.api.nvim_set_keymap("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
