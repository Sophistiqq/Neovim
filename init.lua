-- Set common options
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.g.mapleader = " "
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.ruler = false
vim.opt.timeoutlen = 2000
vim.opt.termguicolors = true

-- Enable lazy loading
vim.loader.enable()

-- Install and load lazy.nvim (if not already installed)
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazy_path,
  })
end
vim.opt.rtp:prepend(lazy_path)

-- Plugin configuration
local plugins = {
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", config = function() require("neoconf").setup() end },
  "folke/neodev.nvim",
}

require("lazy").setup("plugins", plugins)

-- Custom key mappings
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-Left>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-w>l", { noremap = true, silent = true })

vim.opt.whichwrap:append("<>[]hl")

vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>Bdelete<CR>", { noremap = true, silent = true })

-- Custom highlighting
vim.cmd("hi! LineNr guifg=#8b8b8b guibg=none")
vim.cmd("colorscheme kanagawa")

-- Color picker key mappings
vim.api.nvim_set_keymap("n", "<C-c>", "<cmd>PickColor<cr>", {})
vim.api.nvim_set_keymap("i", "<C-c>", "<cmd>PickColorInsert<cr>", {})

-- Toggle command-line mode
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = true })

