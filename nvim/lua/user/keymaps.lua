local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>p", "<cmd>Telescope find_files<cr>", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

keymap("n", "<S-h>", ":BufferLineCyclePrev<cr>", opts)
keymap("n", "<S-l>", ":BufferLineCycleNext<cr>", opts)
keymap("n", "<leader>q", "<cmd>Bdelete!<cr>", opts)

