-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- remap ctrl movements to TmuxNavigate

vim.api.nvim_set_keymap("n", "<C-h>", ":TmuxNavigateLeft<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":TmuxNavigateDown<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":TmuxNavigateUp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":TmuxNavigateRight<CR>", { noremap = true, silent = true })

-- good keymaps
-- paste over visual selection without losing what was yanked
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', { silent = true })
-- delete without copying to register
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { silent = true })
-- move lines up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
-- center screen after search
vim.api.nvim_set_keymap("n", "n", "nzzzv", { silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { silent = true })
-- Q for playing back macro in register q, both normal and visual mode
vim.api.nvim_set_keymap("n", "Q", "@qj", { silent = true })
vim.api.nvim_set_keymap("x", "Q", ":norm @q<CR>", { noremap = true, silent = true })
