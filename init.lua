vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set mouse=a")


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
		  vim.fn.system({
		  "git",
		  "clone",
		  "--filter=blob:none",
		  "https://github.com/folke/lazy.nvim.git",
		  "--branch=stable",
		  lazypath,
          })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {}
local opts = {}


require("lazy").setup(plugins, opts)
