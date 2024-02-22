vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.ruler = false
vim.opt.timeoutlen = 2000
vim.opt.termguicolors = true
vim.loader.enable()
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
}

require("lazy").setup("plugins", opts)

--set the keys for switching panes to C-hjkl

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- for arrow keys with Ctrl
vim.api.nvim_set_keymap("n", "<C-Left>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-w>l", { noremap = true, silent = true })

vim.opt.whichwrap:append("<>[]hl")
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>Bdelete<CR>", { noremap = true, silent = true })

vim.cmd("hi! LineNr guifg=#8b8b8b guibg=none")
vim.cmd("colorscheme kanagawa")

vim.api.nvim_set_keymap("n", "<C-c>", "<cmd>PickColor<cr>", {})
vim.api.nvim_set_keymap("i", "<C-c>", "<cmd>PickColorInsert<cr>", {})

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = true })
