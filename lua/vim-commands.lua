vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set mouse=a")
vim.cmd("set expandtab")
vim.cmd("set softtabstop=2")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<C-n>", ":Neotree toggle filesystem reveal right<CR>", {})
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
