vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

keymap.set("n", "<TAB>", ":bn <CR>", { desc = "Next buffer" })
keymap.set("n", "<C-x>", ":bd <CR>", { desc = "Close buffer" })

keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })
